.class public Lcom/android/server/am/mars/netlink/StructNlMsgHdr;
.super Ljava/lang/Object;
.source "StructNlMsgHdr.java"


# instance fields
.field public nlmsg_flags:S

.field public nlmsg_len:I

.field public nlmsg_pid:I

.field public nlmsg_seq:I

.field public nlmsg_type:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_len:I

    iput-short v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_type:S

    iput-short v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_flags:S

    iput v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_seq:I

    iput v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_pid:I

    return-void
.end method


# virtual methods
.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_len:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_type:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_flags:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_seq:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_pid:I

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
