.class final enum Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation$1;
.super Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/g0;)V

    return-void
.end method


# virtual methods
.method public readString(Lcom/google/crypto/tink/shaded/protobuf/m;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/m;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
