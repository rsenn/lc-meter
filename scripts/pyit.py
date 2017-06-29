import math
import Image


def resize_and_crop(image, width, height):
    image_filename = image.filename
    actual_width, actual_height = image.size
    width, height = float(width), float(height)
    new_width, new_height = 0, 0
    crop_x, crop_y = 0, 0
    width_ratio = actual_width / width
    height_ratio = actual_height / height
    if width_ratio < height_ratio:
        new_width = width
        new_height = math.ceil(actual_height * new_width / actual_width)
        crop_y = int(math.fabs((new_height / 2) - (height / 2)))
    else:
        new_height = height
        new_width = math.ceil(actual_width * new_height / actual_height)
        crop_x = int(math.fabs((new_width / 2) - (width / 2)))
    new_width = int(new_width)
    new_height = int(new_height)
    resized_image = image.resize((new_width, new_height))
    width, height = int(width), int(height)
    cropped_image = resized_image.crop(
        (crop_x, crop_y, crop_x + width,  crop_y + height)
    )
    return cropped_image


def grayscale(image):
    return image.convert('L')


def black_and_white(image):
    return image.convert('1')


def _get_svg_tiles_path(image, x1, y1, x2, y2, path_dict=None):
    if not isinstance(path_dict, dict):
        path_dict = {}
    color = None
    svg_code = ''
    approved = True
    width = x2 - x1
    height = y2 - y1
    for x in range(x1, x2):
        for y in range(y1, y2):
            pixel = image.getpixel((x, y))
            if not color:
                color = pixel
            if color != pixel:
                approved = False
                if width > height:
                    _get_svg_tiles_path(
                        image, x1, y1, x1 + width / 2, y2, path_dict)
                    _get_svg_tiles_path(
                        image, x1 + width / 2, y1, x2, y2, path_dict)
                else:
                    _get_svg_tiles_path(
                        image, x1, y1, x2, y1 + height / 2, path_dict)
                    _get_svg_tiles_path(
                        image, x1, y1 + height / 2, x2, y2, path_dict)
                break
        if not approved:
            break
    if approved:
        if not color in path_dict:
            path_dict[color] = ""
        path_dict[color] += ' M%(x1)d %(y1)d H%(x2)d V%(y2)d H%(x1)d Z' % {
            'x1': x1,
            'x2': x2,
            'y1': y1,
            'y2': y2
        }
    return path_dict


def _get_color(color_tuple):
    """
    Converts and returns the color in the following format:
    In canse of a rgb tuple:
        #%02x%02x%02x (i.e: #00FFCC)
    In case of a rgba tuple:
        rgba(color_tuple)
    """
    if len(color_tuple) == 3:
        return '#%02x%02x%02x' % color_tuple
    return 'rgba%s' % str(color_tuple)


def svg_source(image):
    source = '''<?xml version="1.0" standalone="no"?>\
    <svg width="%(width)d" height="%(height)d"\
    version="1.1" xmlns="http://www.w3.org/2000/svg">\
      %(path_sources)s
    </svg>
    '''
    path_sources = ''
    width, height = image.size
    path_dict = _get_svg_tiles_path(image, 0, 0, width, height)
    for color, path in path_dict.iteritems():
        path = path.strip()
        path_sources += '<path d="%(path)s" fill="%(color)s"/>' % {
            'color': _get_color(color),
            'path': path,
        }
    return source % {
        'width': width,
        'height': height,
        'path_sources': path_sources,
    }
