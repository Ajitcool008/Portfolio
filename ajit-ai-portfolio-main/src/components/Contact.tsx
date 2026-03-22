import React, { useState } from 'react';
import { motion } from 'motion/react';
import { Mail, Phone, MapPin, Github, Linkedin, Briefcase, Globe } from 'lucide-react';
import profileImg from '../assets/profile.png';

export default function Contact() {
  const [formData, setFormData] = useState({
    name: '',
    phone: '',
    email: '',
    subject: '',
    message: ''
  });

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    const { name, phone, email, subject, message } = formData;
    const whatsappMsg = `Hi Ajit, my name is ${name}. %0A%0A*Subject:* ${subject} %0A*Phone:* ${phone} %0A*Email:* ${email} %0A%0A*Message:* %0A${message}`;
    window.open(`https://wa.me/447741398352?text=${whatsappMsg}`, '_blank');
  };

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  return (
    <section id="contact" className="py-24 px-4 md:px-8 bg-white border-t border-gray-100">
      <div className="max-w-7xl mx-auto">
        <div className="text-center mb-16">
          <span className="text-sm font-medium text-rose-600 uppercase tracking-[0.2em] mb-4 block">
            Contact
          </span>
          <h2 className="text-4xl md:text-5xl font-bold text-gray-900">Contact With Me</h2>
        </div>

        <div className="grid lg:grid-cols-[1fr_1.5fr] gap-12">
          {/* Left: Contact Info */}
          <motion.div
            initial={{ opacity: 0, x: -20 }}
            whileInView={{ opacity: 1, x: 0 }}
            viewport={{ once: true }}
            className="p-10 rounded-3xl bg-white shadow-2xl"
          >
            <div className="aspect-square rounded-2xl overflow-hidden mb-10 bg-gray-50">
              <img
                src={profileImg}
                alt="Contact"
                className="w-full h-full object-cover object-[center_10%] grayscale hover:grayscale-0 transition-all duration-500"
              />
            </div>
            <h3 className="text-3xl font-bold text-gray-900 mb-4">Ajit Sharma</h3>
            <p className="text-lg text-gray-500 mb-8 uppercase tracking-widest">Technical Lead & Flutter Developer</p>
            <p className="text-gray-600 leading-relaxed mb-10">
              I am available for freelance work and full-time opportunities. Connect with me via phone: 
              <span className="text-rose-600 font-semibold ml-2">(+44) 7741398352</span> or email: 
              <span className="text-rose-600 font-semibold ml-2">ajit.sharma@outlook.com</span>
            </p>

            <div className="space-y-6 mb-12">
              <div className="flex items-center gap-4 text-gray-600">
                <div className="w-12 h-12 rounded-xl bg-gray-50 flex items-center justify-center text-rose-600 shadow-md">
                  <Phone size={20} />
                </div>
                <span className="text-lg">(+44) 7741398352</span>
              </div>
              <div className="flex items-center gap-4 text-gray-600">
                <div className="w-12 h-12 rounded-xl bg-gray-50 flex items-center justify-center text-rose-600 shadow-md">
                  <Mail size={20} />
                </div>
                <span className="text-lg">ajit.sharma@outlook.com</span>
              </div>
              <div className="flex items-center gap-4 text-gray-600">
                <div className="w-12 h-12 rounded-xl bg-gray-50 flex items-center justify-center text-rose-600 shadow-md">
                  <MapPin size={20} />
                </div>
                <span className="text-lg">London, United Kingdom</span>
              </div>
            </div>

            <div>
              <span className="text-xs font-semibold text-gray-500 uppercase tracking-widest mb-6 block">
                Find me in
              </span>
              <div className="flex gap-4">
                 <a href="https://www.upwork.com/freelancers/ajits10" target="_blank" rel="noopener noreferrer" className="w-14 h-14 rounded-xl bg-white flex items-center justify-center text-gray-700 hover:bg-rose-600 hover:text-white transition-all shadow-xl hover:-translate-y-1">
                  <Briefcase size={24} />
                </a>
                <a href="https://www.linkedin.com/in/ajit-sharma-a0883a72/" target="_blank" rel="noopener noreferrer" className="w-14 h-14 rounded-xl bg-white flex items-center justify-center text-gray-700 hover:bg-rose-600 hover:text-white transition-all shadow-xl hover:-translate-y-1">
                  <Linkedin size={24} />
                </a>
                <a href="https://medium.com/@ajit.cool008" target="_blank" rel="noopener noreferrer" className="w-14 h-14 rounded-xl bg-white flex items-center justify-center text-gray-700 hover:bg-rose-600 hover:text-white transition-all shadow-xl hover:-translate-y-1">
                  <Globe size={24} />
                </a>
              </div>
            </div>
          </motion.div>

          {/* Right: Contact Form */}
          <motion.div
            initial={{ opacity: 0, x: 20 }}
            whileInView={{ opacity: 1, x: 0 }}
            viewport={{ once: true }}
            className="p-10 rounded-3xl bg-white shadow-2xl"
          >
            <form onSubmit={handleSubmit} className="space-y-8">
              <div className="grid md:grid-cols-2 gap-8">
                <div className="space-y-4">
                  <label className="text-xs font-semibold text-gray-500 uppercase tracking-widest">Your Name</label>
                  <input
                    type="text"
                    name="name"
                    required
                    value={formData.name}
                    onChange={handleChange}
                    className="w-full p-4 rounded-xl border-2 border-gray-100 focus:border-rose-600 outline-none transition-colors shadow-inner"
                  />
                </div>
                <div className="space-y-4">
                  <label className="text-xs font-semibold text-gray-500 uppercase tracking-widest">Phone Number</label>
                  <input
                    type="text"
                    name="phone"
                    value={formData.phone}
                    onChange={handleChange}
                    className="w-full p-4 rounded-xl border-2 border-gray-100 focus:border-rose-600 outline-none transition-colors shadow-inner"
                  />
                </div>
              </div>
              <div className="space-y-4">
                <label className="text-xs font-semibold text-gray-500 uppercase tracking-widest">Email</label>
                <input
                  type="email"
                  name="email"
                  required
                  value={formData.email}
                  onChange={handleChange}
                  className="w-full p-4 rounded-xl border-2 border-gray-100 focus:border-rose-600 outline-none transition-colors shadow-inner"
                />
              </div>
              <div className="space-y-4">
                <label className="text-xs font-semibold text-gray-500 uppercase tracking-widest">Subject</label>
                <input
                  type="text"
                  name="subject"
                  value={formData.subject}
                  onChange={handleChange}
                  className="w-full p-4 rounded-xl border-2 border-gray-100 focus:border-rose-600 outline-none transition-colors shadow-inner"
                />
              </div>
              <div className="space-y-4">
                <label className="text-xs font-semibold text-gray-500 uppercase tracking-widest">Your Message</label>
                <textarea
                  rows={6}
                  name="message"
                  required
                  value={formData.message}
                  onChange={handleChange}
                  className="w-full p-4 rounded-xl border-2 border-gray-100 focus:border-rose-600 outline-none transition-colors shadow-inner resize-none"
                />
              </div>
              <button
                type="submit"
                className="w-full py-5 rounded-xl bg-rose-600 text-white font-bold text-sm uppercase tracking-widest hover:bg-rose-700 transition-all shadow-xl hover:shadow-rose-200"
              >
                Send Message
              </button>
            </form>
          </motion.div>
        </div>
      </div>
    </section>
  );
}
