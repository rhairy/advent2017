int ctoi(const char c)
{
	if (c >= '0' && c <= '9') {
		return c - '0';
	} else {
		return -1;
	}
}
