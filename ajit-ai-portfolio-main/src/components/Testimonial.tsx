import React, { useState } from 'react';
import { motion, AnimatePresence } from 'motion/react';
import { Quote, ChevronLeft, ChevronRight, Star } from 'lucide-react';
import { clsx, type ClassValue } from 'clsx';
import { twMerge } from 'tailwind-merge';
import rupeshImg from '../assets/colleagues/rupesh.png';

function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

const clientTestimonials = [
  {
    name: 'Upwork Client',
    role: 'Verified Business',
    image: 'https://cdn.worldvectorlogo.com/logos/upwork.svg',
    content: 'Ajit is an exceptional Flutter developer. He transformed our complex requirements into a smooth, high-performance app that our users love. His technical leadership was key to our project success.',
    rating: 5,
    title: 'Mobile App Development',
    source: 'Upwork'
  },
  {
    name: 'Upwork Client',
    role: 'Enterprise Partner',
    image: 'https://cdn.worldvectorlogo.com/logos/upwork.svg',
    content: 'Working with Ajit was a breeze. He has a deep understanding of mobile architecture and UI/UX. The app he built for us is not only functional but also beautiful and intuitive.',
    rating: 5,
    title: 'UI/UX & Architecture',
    source: 'Upwork'
  },
  {
    name: 'Upwork Client',
    role: 'Strategic Client',
    image: 'https://cdn.worldvectorlogo.com/logos/upwork.svg',
    content: 'Ajit is more than just a developer; he is a problem solver. He helped us navigate technical challenges and delivered a robust solution on time. Highly recommended for any Flutter project.',
    rating: 5,
    title: 'Technical Problem Solving',
    source: 'Upwork'
  },
];

const colleagueTestimonials = [
  {
    name: 'Rupesh Khosla',
    role: 'Director at Ditstek Innovations',
    image: rupeshImg,
    content: 'Ajit is a professional with high technical skills. I am particularly impressed by how he bridges different backend systems and creates peppy mobile applications on Flutter. His leadership qualities and proactive mindset make him a great asset to any team.',
    rating: 5,
    title: 'Technical Leadership',
    source: 'LinkedIn'
  },
  {
    name: 'Ketan Doiphode',
    role: 'Mobile Architect',
    image: 'https://ui-avatars.com/api/?name=Ketan+Doiphode&background=0284c7&color=fff',
    content: 'On the Interakt project, Ajit showed great managerial and technical skills. He was proactive to take up leadership and keep all of us on track. His passion and professionalism make him a valuable team member and expert in mobile development.',
    rating: 5,
    title: 'Mobile Architecture',
    source: 'LinkedIn'
  },
  {
    name: 'Ankit Chauhan',
    role: 'Senior Consultant at MBRDI',
    image: 'https://ui-avatars.com/api/?name=Ankit+Chauhan&background=0284c7&color=fff',
    content: 'Ajit consistently showed exceptional skills in Flutter and Mobile application development. He is a key contributor, great communicator, and team player with a solution-oriented mindset. An outstanding professional.',
    rating: 5,
    title: 'Flutter Excellence',
    source: 'LinkedIn'
  },
  {
    name: 'Pushkar Srivastava',
    role: 'Senior Software Engineer at Appinventiv',
    image: 'https://ui-avatars.com/api/?name=Pushkar+Srivastava&background=0284c7&color=fff',
    content: "Ajit's leadership and technical expertise truly stand out. He has a knack for solving complex technical challenges and consistently delivers innovative solutions that drive project success across multiple high-impact projects.",
    rating: 5,
    title: 'Innovative Problem Solving',
    source: 'LinkedIn'
  },
  {
    name: 'Anil Kumar',
    role: 'Flutter Developer & App Publisher',
    image: 'https://ui-avatars.com/api/?name=Anil+Kumar&background=0284c7&color=fff',
    content: "During my tenure at OnGraph Technology, I collaborated with Ajit Sharma on several mobile application development projects. He guided me in various areas, significantly enhancing my skills in Flutter. His ability to break down complex tasks into smaller, manageable parts consistently helped our team meet deadlines while delivering high-quality work.",
    rating: 5,
    title: 'Strategic Leadership',
    source: 'LinkedIn'
  },
  {
    name: 'Aman Kumar Gupta',
    role: 'Flutter Developer | 4 Years Experienced',
    image: 'https://ui-avatars.com/api/?name=Aman+Kumar+Gupta&background=7c3aed&color=fff',
    content: "I had the opportunity of reporting directly to Ajit Sharma for several mobile application development projects and I have been very lucky to be mentored by him. I cannot overstate how much I learned from Ajit regarding Flutter and mobile technologies – he was always available to help me through difficult problems.",
    rating: 5,
    title: 'Flutter Mentorship',
    source: 'LinkedIn'
  },
  {
    name: 'Mohit Kaushik',
    role: 'iOS, Android & Flutter Developer | Firebase | AWS',
    image: 'https://ui-avatars.com/api/?name=Mohit+Kaushik&background=be185d&color=fff',
    content: "I was fortunate enough to have Ajit Sharma in my team at InfoStride. Because of his experience in Flutter and state management solutions, we could easily find solutions to complex problems. He emerged as a genius in creating the SafeStreet app and Sunny75 app — putting extra effort in design and creativity.",
    rating: 5,
    title: 'App Development Genius',
    source: 'LinkedIn'
  },
  {
    name: 'Varun Bhati',
    role: 'iOS Developer | Swift | SwiftUI | 6 Years Experience',
    image: 'https://ui-avatars.com/api/?name=Varun+Bhati&background=d97706&color=fff',
    content: "I have never worked with such a professional as Ajit Sharma in my whole career. Ajit being my mentor has been a great source of direction to me especially in cross-platform mobile application development using Flutter. He always insisted that I should reason out things on my own, which has helped me develop strong problem solving skills.",
    rating: 5,
    title: 'Transformative Mentorship',
    source: 'LinkedIn'
  },
  {
    name: 'Varsha Singh',
    role: 'Software Development Engineer @McAfee | Node.js · Golang',
    image: 'https://ui-avatars.com/api/?name=Varsha+Singh&background=059669&color=fff',
    content: "It was a great experience to be working with Ajit on many projects. His leadership and willingness to address issues in advance were very beneficial in terms of organization of our work. Ajit always managed to show leadership by proactively engaging himself in the activities and providing valuable feedback.",
    rating: 5,
    title: 'Proactive Leadership',
    source: 'LinkedIn'
  },
  {
    name: 'Naman Dhiman',
    role: 'Software Engineer | Flutter & SwiftUI Developer',
    image: 'https://ui-avatars.com/api/?name=Naman+Dhiman&background=0369a1&color=fff',
    content: "I had the opportunity of reporting directly to Ajit Sharma for several mobile application development projects and I have been very lucky to be mentored by him. His coaching helped me understand the right way of managing states, coding practices, and the need to develop products that truly meet customer needs.",
    rating: 5,
    title: 'Coaching Excellence',
    source: 'LinkedIn'
  },
];

export default function Testimonial() {
  const [activeTab, setActiveTab] = useState<'clients' | 'colleagues'>('clients');
  const [currentIndex, setCurrentIndex] = useState(0);

  const testimonials = activeTab === 'clients' ? clientTestimonials : colleagueTestimonials;

  const next = () => setCurrentIndex((prev) => (prev + 1) % testimonials.length);
  const prev = () => setCurrentIndex((prev) => (prev - 1 + testimonials.length) % testimonials.length);

  // Reset index when tab changes
  const handleTabChange = (tab: 'clients' | 'colleagues') => {
    setActiveTab(tab);
    setCurrentIndex(0);
  };

  return (
    <section id="testimonial" className="py-24 px-4 md:px-8 bg-white border-t border-gray-100 overflow-hidden">
      <div className="max-w-7xl mx-auto">
        <div className="text-center mb-16">
          <h2 className="text-4xl md:text-5xl font-bold text-gray-900 mb-8">Testimonial</h2>
          
          <div className="flex justify-center gap-4">
            <button
              onClick={() => handleTabChange('clients')}
              className={cn(
                "px-8 py-3 rounded-xl font-bold transition-all shadow-md",
                activeTab === 'clients' 
                  ? "bg-rose-600 text-white shadow-rose-200" 
                  : "bg-white text-gray-600 hover:bg-gray-50"
              )}
            >
              Upwork Clients
            </button>
            <button
              onClick={() => handleTabChange('colleagues')}
              className={cn(
                "px-8 py-3 rounded-xl font-bold transition-all shadow-md",
                activeTab === 'colleagues' 
                  ? "bg-rose-600 text-white shadow-rose-200" 
                  : "bg-white text-gray-600 hover:bg-gray-50"
              )}
            >
              LinkedIn Colleagues
            </button>
          </div>
        </div>

        <div className="relative flex items-center justify-center">
          <AnimatePresence mode="wait">
            <motion.div
              key={currentIndex}
              initial={{ opacity: 0, x: 50 }}
              animate={{ opacity: 1, x: 0 }}
              exit={{ opacity: 0, x: -50 }}
              transition={{ duration: 0.5 }}
              className="grid lg:grid-cols-[1fr_2fr] gap-12 items-center max-w-5xl"
            >
              {/* Client Image Card */}
              <div className="p-8 rounded-3xl bg-white shadow-2xl">
                <div className="aspect-square rounded-2xl overflow-hidden mb-8">
                  <img
                    src={testimonials[currentIndex].image}
                    alt={testimonials[currentIndex].name}
                    className="w-full h-full object-contain p-4"
                    referrerPolicy="no-referrer"
                  />
                </div>
                <span className="text-xs font-bold text-rose-600 uppercase tracking-widest mb-2 block">
                  {testimonials[currentIndex].role}
                </span>
                <h4 className="text-2xl font-bold text-gray-900">{testimonials[currentIndex].name}</h4>
              </div>

              {/* Testimonial Content Card */}
              <div className="relative p-12 rounded-3xl bg-white shadow-2xl">
                <div className="flex justify-between items-start mb-8">
                  <div className="text-gray-200">
                    <Quote size={80} strokeWidth={1} />
                  </div>
                  <div className="flex gap-1 text-yellow-400">
                    {[...Array(testimonials[currentIndex].rating)].map((_, i) => (
                      <Star key={i} size={16} fill="currentColor" />
                    ))}
                  </div>
                </div>
                
                <div className="mb-12">
                  <h3 className="text-2xl font-bold text-gray-900 mb-6">{testimonials[currentIndex].title}</h3>
                  <p className="text-xl text-gray-600 leading-relaxed italic">
                    "{testimonials[currentIndex].content}"
                  </p>
                </div>

                <div className="border-t border-gray-100 pt-8">
                  <span className="text-sm font-bold text-gray-400 uppercase tracking-widest flex items-center gap-2">
                    via {testimonials[currentIndex].source}
                  </span>
                </div>
              </div>
            </motion.div>
          </AnimatePresence>

          {/* Navigation Buttons */}
          <div className="absolute top-1/2 -translate-y-1/2 left-0 right-0 flex justify-between pointer-events-none px-4 lg:-mx-12">
            <button
              onClick={prev}
              className="w-14 h-14 rounded-xl bg-white shadow-xl flex items-center justify-center text-gray-600 hover:bg-rose-600 hover:text-white transition-all pointer-events-auto"
            >
              <ChevronLeft size={24} />
            </button>
            <button
              onClick={next}
              className="w-14 h-14 rounded-xl bg-white shadow-xl flex items-center justify-center text-gray-600 hover:bg-rose-600 hover:text-white transition-all pointer-events-auto"
            >
              <ChevronRight size={24} />
            </button>
          </div>
        </div>
      </div>
    </section>
  );
}
