.class public final Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;,
        Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$SignatureOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/p3;

.field private static final internal_static_Signature_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_Signature_fieldAccessorTable:Lcom/google/protobuf/q6;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\n\u000fsignature.proto\".\n\tSignature\u0012\u000e\n\u0006signer\u0018\u0001 \u0001(\t\u0012\u0011\n\tsignature\u0018\u0002 \u0001(\u000cBG\n5com.samsung.security.fabric.chain.core.data.signatureB\u000eSignatureProtob\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$1;

    invoke-direct {v1}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/p3;

    invoke-static {v0, v3, v1}, Lcom/google/protobuf/p3;->j([Ljava/lang/String;[Lcom/google/protobuf/p3;Lcom/google/protobuf/o3;)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto;->internal_static_Signature_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v2, "Signer"

    const-string v3, "Signature"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto;->internal_static_Signature_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto;->internal_static_Signature_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic b()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto;->internal_static_Signature_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic c(Lcom/google/protobuf/p3;)V
    .locals 0

    sput-object p0, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto;->descriptor:Lcom/google/protobuf/p3;

    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/p3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto;->descriptor:Lcom/google/protobuf/p3;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/q4;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto;->registerAllExtensions(Lcom/google/protobuf/t4;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/t4;)V
    .locals 0

    .line 2
    return-void
.end method
