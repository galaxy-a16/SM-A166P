.class Lorg/bouncycastle/crypto/util/JournalingSecureRandom$TranscriptStream;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/JournalingSecureRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranscriptStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/crypto/util/JournalingSecureRandom;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/util/JournalingSecureRandom;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/crypto/util/JournalingSecureRandom$TranscriptStream;->this$0:Lorg/bouncycastle/crypto/util/JournalingSecureRandom;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/crypto/util/JournalingSecureRandom;Lorg/bouncycastle/crypto/util/JournalingSecureRandom$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/util/JournalingSecureRandom$TranscriptStream;-><init>(Lorg/bouncycastle/crypto/util/JournalingSecureRandom;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method
