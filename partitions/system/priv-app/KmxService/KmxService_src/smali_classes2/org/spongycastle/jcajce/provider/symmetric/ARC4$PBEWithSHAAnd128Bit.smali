.class public Lorg/spongycastle/jcajce/provider/symmetric/ARC4$PBEWithSHAAnd128Bit;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/ARC4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAnd128Bit"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lorg/spongycastle/crypto/engines/RC4Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/RC4Engine;-><init>()V

    const/16 v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lorg/spongycastle/crypto/StreamCipher;III)V

    return-void
.end method
