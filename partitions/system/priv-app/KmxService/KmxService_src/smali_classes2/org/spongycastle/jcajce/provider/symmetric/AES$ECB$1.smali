.class Lorg/spongycastle/jcajce/provider/symmetric/AES$ECB$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/jcajce/provider/symmetric/util/BlockCipherProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/jcajce/provider/symmetric/AES$ECB;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lorg/spongycastle/crypto/BlockCipher;
    .locals 0

    new-instance p0, Lorg/spongycastle/crypto/engines/AESEngine;

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/AESEngine;-><init>()V

    return-object p0
.end method
