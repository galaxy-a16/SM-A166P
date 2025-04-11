.class public Lorg/apache/commons/compress/archivers/sevenz/Coder;
.super Ljava/lang/Object;
.source "Coder.java"


# instance fields
.field public decompressionMethodId:[B

.field public numInStreams:J

.field public numOutStreams:J

.field public properties:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    return-void
.end method
