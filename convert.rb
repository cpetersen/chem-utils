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
require "cdk-1.3.0.jar"
require 'rubygems'
gem 'rbtk'
require 'rubidium/sdf'
require 'cdk'

molfile_reader = CDK::MolfileReader.new
smiles_writer = CDK::SmilesWriter.new

File.open("smiles.csv", "w") do |csv|
  Dir.glob("*.sdf").each do |filename|
    p = Rubidium::SDF::Parser.new File.new(filename)
    csv.puts filename
    puts filename
    p.each do |entry|
      molecule = molfile_reader.read entry.get("Molfile")
      csv.puts smiles_writer.write(molecule)
    end
    csv.puts ""
  end
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
