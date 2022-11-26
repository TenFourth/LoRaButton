function get16Int(bytes, index) {
    return bytes[index] << 8 | bytes[index + 1];
}

function decodeUplink(input) {
    const data = {
        button_pressed: input.bytes[0],
        battery: get16Int(input.bytes, 1) / 1000,
    };

    return {
        data: data,
        warnings: [],
        errors: []
    };
}