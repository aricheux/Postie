/// A type that has a default format of form-url-encoding
public protocol GraphQLFormatProvider {

    /// Format of data, default extension is set to `.json`
    static var format: APIDataFormat { get }

}

extension GraphQLFormatProvider {

    public static var format: APIDataFormat {
        .plain
    }
}
