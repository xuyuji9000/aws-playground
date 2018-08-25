exports.handler = function (event, context, callback) {
    // TODO implement
    // console.log('cloudwatch log')
    // console.info('cloudwatch info')
    var response = {
        statusCode: 200,
    //     headers: {"content-type": "txt/html"},
        body: JSON.stringify({'hello':'world'})
    }
    callback(null, response)
};
