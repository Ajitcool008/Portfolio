import React from 'react';
import { Check, ArrowRight } from 'lucide-react';
import { motion } from 'motion/react';

const plans = [
  {
    name: 'Static',
    price: '29',
    description: 'Perfect for simple personal websites or landing pages.',
    features: [
      'Single Page Website',
      'Responsive Design',
      'Contact Form Integration',
      'Basic SEO Optimization',
      'Free Hosting Setup',
    ],
  },
  {
    name: 'Standard',
    price: '99',
    description: 'Ideal for small businesses and professional portfolios.',
    features: [
      'Multi-Page Website',
      'Advanced UI Animations',
      'CMS Integration (Firebase)',
      'Performance Optimization',
      'Priority Support',
    ],
    isPopular: true,
  },
  {
    name: 'Premium',
    price: '199',
    description: 'Comprehensive solutions for complex web applications.',
    features: [
      'Full-Stack Web App',
      'Custom API Integration',
      'E-commerce Functionality',
      'Dedicated Maintenance',
      '24/7 Support',
    ],
  },
];

export default function Pricing() {
  return (
    <section id="pricing" className="py-24 px-4 md:px-8 bg-white border-t border-gray-100">
      <div className="max-w-7xl mx-auto">
        <div className="text-center mb-16">
          <span className="text-sm font-medium text-rose-600 uppercase tracking-[0.2em] mb-4 block">
            Pricing
          </span>
          <h2 className="text-4xl md:text-5xl font-bold text-gray-900">My Pricing</h2>
        </div>

        <div className="grid md:grid-cols-3 gap-10">
          {plans.map((plan, index) => (
            <motion.div
              key={index}
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              viewport={{ once: true }}
              transition={{ delay: index * 0.1 }}
              className={`relative p-12 rounded-3xl bg-white shadow-2xl flex flex-col ${
                plan.isPopular ? 'border-2 border-rose-600' : ''
              }`}
            >
              {plan.isPopular && (
                <span className="absolute -top-4 left-1/2 -translate-x-1/2 px-6 py-2 rounded-full bg-rose-600 text-white text-xs font-bold uppercase tracking-widest">
                  Most Popular
                </span>
              )}
              <div className="mb-10">
                <h3 className="text-2xl font-bold text-gray-900 mb-4">{plan.name}</h3>
                <div className="flex items-baseline gap-1 mb-6">
                  <span className="text-4xl font-bold text-gray-900">$</span>
                  <span className="text-6xl font-bold text-gray-900">{plan.price}</span>
                  <span className="text-gray-500 font-medium">/project</span>
                </div>
                <p className="text-gray-500 leading-relaxed">{plan.description}</p>
              </div>

              <ul className="space-y-6 mb-12 flex-grow">
                {plan.features.map((feature, i) => (
                  <li key={i} className="flex items-center gap-4 text-gray-600">
                    <Check size={18} className="text-rose-600 flex-shrink-0" />
                    <span>{feature}</span>
                  </li>
                ))}
              </ul>

              <button
                className={`w-full py-5 rounded-xl font-bold text-sm uppercase tracking-widest transition-all shadow-xl flex items-center justify-center gap-2 ${
                  plan.isPopular
                    ? 'bg-rose-600 text-white hover:bg-rose-700'
                    : 'bg-white text-rose-600 border border-rose-600 hover:bg-rose-600 hover:text-white'
                }`}
              >
                Order Now <ArrowRight size={18} />
              </button>
            </motion.div>
          ))}
        </div>
      </div>
    </section>
  );
}
