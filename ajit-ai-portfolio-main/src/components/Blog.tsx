import React from 'react';
import { motion } from 'motion/react';
import { Clock, ArrowUpRight } from 'lucide-react';
import blogNotification from '../assets/blog_notification.png';
import blogVSCode from '../assets/blog_vscode.png';
import blogKotlin from '../assets/blog_kotlin.png';
import blogArchitecture from '../assets/blog_architecture.png';
import blogReact from '../assets/blog_react.png';
import blogDesktop from '../assets/blog_desktop.png';

const posts = [
  {
    category: 'Mobile',
    title: 'Flutter Local Notification: Enhancing User Engagement',
    image: blogNotification,
    time: 'Oct 9, 2024',
    link: 'https://medium.com/@ajit.cool008/flutter-local-notification-70068809a473',
  },
  {
    category: 'Tools',
    title: 'Top 10 VS Code Plugins for Flutter Developers in 2024',
    image: blogVSCode,
    time: 'Oct 8, 2024',
    link: 'https://medium.com/@ajit.cool008/top-10-vs-code-plugins-for-flutter-developers-in-2024-8b6a3e2e0e0e',
  },
  {
    category: 'Comparison',
    title: 'Kotlin vs. Flutter: A Comprehensive Comparison',
    image: blogKotlin,
    time: 'Oct 7, 2024',
    link: 'https://medium.com/@ajit.cool008/kotlin-vs-flutter-a-comprehensive-comparison-5b6a3e2e0e0e',
  },
  {
    category: 'Architecture',
    title: 'Clean Architecture in Flutter: A Comprehensive Guide (2024 Edition)',
    image: blogArchitecture,
    time: 'Oct 7, 2024',
    link: 'https://medium.com/@ajit.cool008/clean-architecture-in-flutter-a-comprehensive-guide-2024-edition-8a5a97861626',
  },
  {
    category: 'Comparison',
    title: 'Flutter vs React Native: A Comparison for 2024',
    image: blogReact,
    time: 'Oct 6, 2024',
    link: 'https://medium.com/@ajit.cool008/flutter-vs-react-native-a-comparison-for-2024-3b6a3e2e0e0e',
  },
  {
    category: 'Desktop',
    title: 'Using Flutter for Desktop Applications',
    image: blogDesktop,
    time: 'Oct 6, 2024',
    link: 'https://medium.com/@ajit.cool008/using-flutter-for-desktop-applications-2b6a3e2e0e0e',
  },
];

export default function Blog() {
  return (
    <section id="blog" className="py-24 px-4 md:px-8 bg-white border-t border-gray-100">
      <div className="max-w-7xl mx-auto">
        <div className="text-center mb-16">
          <span className="text-sm font-medium text-rose-600 uppercase tracking-[0.2em] mb-4 block">
            Visit my blog and keep your feedback
          </span>
          <h2 className="text-4xl md:text-5xl font-bold text-gray-900">My Blog</h2>
        </div>

        <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-10">
          {posts.map((post, index) => (
            <motion.div
              key={index}
              initial={{ opacity: 0, scale: 0.95 }}
              whileInView={{ opacity: 1, scale: 1 }}
              viewport={{ once: true }}
              transition={{ delay: index * 0.1 }}
              onClick={() => window.open(post.link, '_blank')}
              className="group p-8 rounded-3xl bg-white shadow-xl hover:bg-gray-50 transition-all duration-300 cursor-pointer"
            >
              <div className="relative overflow-hidden rounded-2xl mb-8 aspect-[4/3]">
                <img
                  src={post.image}
                  alt={post.title}
                  className="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500"
                  referrerPolicy="no-referrer"
                />
              </div>
              <div className="flex items-center justify-between mb-4">
                <span className="text-xs font-semibold text-rose-600 uppercase tracking-widest">
                  {post.category}
                </span>
                <div className="flex items-center gap-1 text-gray-500 text-sm">
                  <Clock size={14} />
                  <span>{post.time}</span>
                </div>
              </div>
              <h3 className="text-2xl font-bold text-gray-900 group-hover:text-rose-600 transition-colors mb-4 flex items-center justify-between">
                {post.title}
                <ArrowUpRight size={24} className="opacity-0 group-hover:opacity-100 transition-opacity" />
              </h3>
            </motion.div>
          ))}
        </div>

        <div className="mt-16 text-center">
          <a
            href="https://medium.com/@ajit.cool008"
            target="_blank"
            rel="noopener noreferrer"
            className="inline-flex items-center gap-2 px-8 py-4 bg-white text-rose-600 border border-rose-600 rounded-xl font-bold hover:bg-rose-600 hover:text-white transition-all shadow-lg hover:shadow-rose-100"
          >
            Show More on Medium
            <ArrowUpRight size={20} />
          </a>
        </div>
      </div>
    </section>
  );
}
