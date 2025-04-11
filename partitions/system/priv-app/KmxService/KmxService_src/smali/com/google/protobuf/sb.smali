.class public final Lcom/google/protobuf/sb;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/m7;
.implements Ljava/util/RandomAccess;


# instance fields
.field public final a:Lcom/google/protobuf/m7;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/m7;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/sb;->a:Lcom/google/protobuf/m7;

    return-void
.end method


# virtual methods
.method public final H(I)Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/sb;->a:Lcom/google/protobuf/m7;

    invoke-interface {p0, p1}, Lcom/google/protobuf/m7;->H(I)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final O()Lcom/google/protobuf/m7;
    .locals 0

    return-object p0
.end method

.method public final b0(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/sb;->a:Lcom/google/protobuf/m7;

    invoke-interface {p0, p1}, Lcom/google/protobuf/m7;->b0(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/sb;->a:Lcom/google/protobuf/m7;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final h0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/sb;->a:Lcom/google/protobuf/m7;

    invoke-interface {p0}, Lcom/google/protobuf/m7;->h0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/protobuf/e8;

    invoke-direct {v0, p0}, Lcom/google/protobuf/e8;-><init>(Lcom/google/protobuf/sb;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/u5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/u5;-><init>(Lcom/google/protobuf/sb;I)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/sb;->a:Lcom/google/protobuf/m7;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final y(Lcom/google/protobuf/ByteString;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
