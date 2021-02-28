package Entity;

public class VisitedBlock {
	
	private int blockId;
	private boolean visit;
	
	public VisitedBlock(int blockId, boolean visit) {
		super();
		this.blockId = blockId;
		this.visit = visit;
	}

	public VisitedBlock() {
		super();
	}

	public int getBlockId() {
		return blockId;
	}

	public void setBlockId(int blockId) {
		this.blockId = blockId;
	}

	public boolean getVisit() {
		return visit;
	}

	public void setVisit(boolean visit) {
		this.visit = visit;
	}

}
