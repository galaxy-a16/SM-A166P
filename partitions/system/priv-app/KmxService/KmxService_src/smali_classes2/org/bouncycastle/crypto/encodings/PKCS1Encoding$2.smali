.class Lorg/bouncycastle/crypto/encodings/PKCS1Encoding$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding$2;->this$0:Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 0

    const-string p0, "org.bouncycastle.pkcs1.not_strict"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
