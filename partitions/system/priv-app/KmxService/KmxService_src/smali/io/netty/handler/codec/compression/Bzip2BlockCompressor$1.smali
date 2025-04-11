.class Lio/netty/handler/codec/compression/Bzip2BlockCompressor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/compression/Bzip2BlockCompressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/compression/Bzip2BlockCompressor;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/compression/Bzip2BlockCompressor;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor$1;->this$0:Lio/netty/handler/codec/compression/Bzip2BlockCompressor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(B)Z
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor$1;->this$0:Lio/netty/handler/codec/compression/Bzip2BlockCompressor;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->write(I)Z

    move-result p0

    return p0
.end method
