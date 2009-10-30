import org.openscience.cdk.io.MDLReader;
import java.io.File;
import java.io.FileReader;

class Convert {
	public static void main(String [] args) {
		File file = new File(".");
		String filenames[] = file.list( );
		for(int i=0; i<filenames.length; i++) {
			if(filenames[i].endsWith("sdf")) {
				MDLReader mdlReader = new MDLReader(filenames[i])
			}
		}
	}
}
