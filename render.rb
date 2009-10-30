###############################
################ ATTEMPT 1
###############################
# require "mx-0.108.1.jar"
# import "com.metamolecular.mx.io.daylight.SMILESReader"
# import "com.metamolecular.mx.io.mdl.SDFileReader"
# import "com.metamolecular.mx.io.mdl.MolfileWriter"
# import "com.metamolecular.mx.model.MoleculeKit"
# import "com.metamolecular.mx.path.PathFinder"

###############################
################ ATTEMPT 2
###############################
# require 'java'
# require "cdk-1.2.3.jar"
# 
# require "org/openscience/cdk/io/MDLReader"
# require "java/io/FileReader"
# 
# Dir.glob("*.sdf").each do |sdf_filename|
#   reader = FileReader(sdf_filename)
#   sdf = org.openscience.cdk.io.MDLReader.new(reader)
# end

###############################
################ ATTEMPT 3
###############################
# require 'rubygems'
# require 'rcdk'
# require 'rcdk/util'
# 
# mol = RCDK::Util::Lang.read_iupac 'quinoline'
# mol.getAtomCount # => 10

###############################
################ ATTEMPT 4
###############################
require "java"
require "lib/cdk-20060714.jar"
require "lib/structure-cdk-0.1.0.jar"
require 'rubygems'
gem 'rbtk'
require 'rubidium/sdf'
# require 'cdk'

include_class Java::java.io.FileReader
include_class Java::org.openscience.cdk.io.MDLReader
include_class Java::org.openscience.cdk.interfaces.IMolecule
include_class Java::org.openscience.cdk.Molecule
include_class Java::net.sf.structure.cdk.util.ImageKit


filename = "sdf/k165 prophetics 72.sdf"

p = Rubidium::SDF::Parser.new File.new(filename)
puts filename
i=0
p.each do |entry|
  puts i
  mofilename = "mols/#{i}.mol"
  molfile = entry.get("Molfile")
  File.open(mofilename, "w") { |f| f.puts molfile }

  mdl_reader = MDLReader.new(FileReader.new(mofilename));
  molecule = mdl_reader.read(Molecule.new)
  
  # molecule = molfile_reader.read molfile
  # puts molfile
  ImageKit.writePNG(molecule, 400, 250, "images/#{i}.png");
  i = i+1
end

###############################
################ ATTEMPT 5
###############################
# require "cdk-1.2.3.jar"
# require 'rubygems'
# gem 'rbtk'
# require 'rubidium/sdf'
# require 'cdk'
# 
# Dir.glob("*.sdf").each do |filename|
#   
# end
