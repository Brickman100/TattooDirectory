export default function TermsPage() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-gray-50 px-6 py-12">
      <div className="max-w-2xl text-center">
        <h1 className="text-3xl font-bold text-gray-800 mb-4">Status</h1>
        <p className="text-gray-600 mb-6">
          This is a placeholder page for the status of our server.
        </p>
        <a
          href="/home"
          className="inline-block px-6 py-2 bg-gray-900 text-white rounded-lg hover:bg-gray-700 transition"
        >
          Go Back Home
        </a>
      </div>
    </div>
  );
}
