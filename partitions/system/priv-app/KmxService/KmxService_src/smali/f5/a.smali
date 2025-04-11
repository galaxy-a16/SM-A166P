.class public final Lf5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf5/d;


# instance fields
.field public final a:I

.field public final b:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;


# direct methods
.method public constructor <init>(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf5/a;->a:I

    iput-object p2, p0, Lf5/a;->b:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    return-void
.end method


# virtual methods
.method public final annotationType()Ljava/lang/Class;
    .locals 0

    const-class p0, Lf5/d;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lf5/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lf5/d;

    move-object v1, p1

    check-cast v1, Lf5/a;

    iget v1, v1, Lf5/a;->a:I

    iget v3, p0, Lf5/a;->a:I

    if-ne v3, v1, :cond_2

    check-cast p1, Lf5/a;

    iget-object p0, p0, Lf5/a;->b:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    iget-object p1, p1, Lf5/a;->b:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    const v0, 0xde0d66

    iget v1, p0, Lf5/a;->a:I

    xor-int/2addr v0, v1

    iget-object p0, p0, Lf5/a;->b:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const v1, 0x79ad669e

    xor-int/2addr p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@com.google.firebase.encoders.proto.Protobuf(tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lf5/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "intEncoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lf5/a;->b:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
