import React from 'react';
import { motion } from 'motion/react';

const clients = [
  { name: 'TechFlow', logo: 'https://picsum.photos/seed/logo1/200/100' },
  { name: 'Appify', logo: 'https://picsum.photos/seed/logo2/200/100' },
  { name: 'StartupHub', logo: 'https://picsum.photos/seed/logo3/200/100' },
  { name: 'CloudNet', logo: 'https://picsum.photos/seed/logo4/200/100' },
  { name: 'DataCore', logo: 'https://picsum.photos/seed/logo5/200/100' },
  { name: 'InnoSoft', logo: 'https://picsum.photos/seed/logo6/200/100' },
  { name: 'NextGen', logo: 'https://picsum.photos/seed/logo7/200/100' },
  { name: 'SmartDev', logo: 'https://picsum.photos/seed/logo8/200/100' },
];

export default function Clients() {
  return (
    <section id="clients" className="py-24 px-4 md:px-8 bg-white border-t border-gray-100">
      <div className="max-w-7xl mx-auto">
        <div className="text-center mb-16">
          <span className="text-sm font-medium text-rose-600 uppercase tracking-[0.2em] mb-4 block">
            Popular Clients
          </span>
          <h2 className="text-4xl md:text-5xl font-bold text-gray-900">Awesome Clients</h2>
        </div>

        <div className="grid grid-cols-2 md:grid-cols-4 gap-8">
          {clients.map((client, index) => (
            <motion.div
              key={index}
              initial={{ opacity: 0, scale: 0.9 }}
              whileInView={{ opacity: 1, scale: 1 }}
              viewport={{ once: true }}
              transition={{ delay: index * 0.05 }}
              className="group p-8 rounded-2xl bg-white shadow-xl hover:bg-rose-600 transition-all duration-300 cursor-pointer flex items-center justify-center"
            >
              <img
                src={client.logo}
                alt={client.name}
                className="w-full max-w-[120px] h-auto grayscale group-hover:grayscale-0 group-hover:brightness-0 group-hover:invert transition-all duration-300"
                referrerPolicy="no-referrer"
              />
            </motion.div>
          ))}
        </div>
      </div>
    </section>
  );
}
