.class public abstract Lu4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lpa/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu4/a;->b:Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object p1

    .line 1
    iget p1, p1, Lga/a;->c:I

    .line 2
    iput p1, p0, Lu4/a;->a:I

    return-void
.end method

.method public constructor <init>(Lpa/c;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu4/a;->b:Ljava/lang/Object;

    iput p2, p0, Lu4/a;->a:I

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageV3;
.end method

.method public final c(Ljava/lang/String;ILcom/google/protobuf/GeneratedMessageV3;Lcom/google/protobuf/GeneratedMessageV3;)Lra/f;
    .locals 9

    if-eqz p4, :cond_0

    new-instance v0, La5/a;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, La5/a;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lio/reactivex/rxjava3/internal/operators/observable/j;

    invoke-direct {v3, v0}, Lio/reactivex/rxjava3/internal/operators/observable/j;-><init>(La5/a;)V

    iget-object v0, p0, Lu4/a;->b:Ljava/lang/Object;

    check-cast v0, Lpa/c;

    invoke-virtual {p3}, Lcom/google/protobuf/f;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lpa/c;->publish(Ljava/lang/String;ILcom/google/protobuf/ByteString;)Z

    iget p2, p0, Lu4/a;->a:I

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance p2, Lra/f;

    invoke-direct {p2, p1, p4}, Lra/f;-><init>(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessageV3;)V

    new-instance v8, Lio/reactivex/rxjava3/internal/operators/observable/n;

    invoke-direct {v8, p2}, Lio/reactivex/rxjava3/internal/operators/observable/n;-><init>(Lra/f;)V

    sget-object v7, Lio/reactivex/rxjava3/schedulers/e;->a:Ljb/q;

    const-string p1, "unit is null"

    invoke-static {v6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "scheduler is null"

    invoke-static {v7, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance p1, Lio/reactivex/rxjava3/internal/operators/observable/w;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lio/reactivex/rxjava3/internal/operators/observable/w;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/j;JLjava/util/concurrent/TimeUnit;Ljb/q;Lio/reactivex/rxjava3/internal/operators/observable/n;)V

    invoke-virtual {p1}, Ljb/j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lra/f;

    iget-object p2, p0, Lu4/a;->b:Ljava/lang/Object;

    check-cast p2, Lpa/c;

    invoke-virtual {p0}, Lu4/a;->a()I

    move-result p0

    invoke-virtual {p2, p0}, Lpa/c;->unsubscribe(I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "defaultValue is marked non-null but is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(IILcom/google/protobuf/GeneratedMessageV3;)Ljava/util/List;
    .locals 12

    new-instance v0, La5/a;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, La5/a;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lio/reactivex/rxjava3/internal/operators/observable/j;

    invoke-direct {v3, v0}, Lio/reactivex/rxjava3/internal/operators/observable/j;-><init>(La5/a;)V

    iget-object v0, p0, Lu4/a;->b:Ljava/lang/Object;

    check-cast v0, Lpa/c;

    invoke-virtual {p3}, Lcom/google/protobuf/f;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lpa/c;->publish(ILcom/google/protobuf/ByteString;)Z

    iget p2, p0, Lu4/a;->a:I

    int-to-long v6, p2

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Lio/reactivex/rxjava3/schedulers/e;->a:Ljb/q;

    invoke-static {}, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->asSupplier()Llb/j;

    move-result-object v10

    const-string p2, "unit is null"

    invoke-static {v8, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "scheduler is null"

    invoke-static {v9, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "bufferSupplier is null"

    invoke-static {v10, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "count"

    invoke-static {p1, p2}, Lg2/m;->o(ILjava/lang/String;)V

    new-instance p2, Lio/reactivex/rxjava3/internal/operators/observable/g;

    move-object v2, p2

    move-wide v4, v6

    move v11, p1

    invoke-direct/range {v2 .. v11}, Lio/reactivex/rxjava3/internal/operators/observable/g;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/j;JJLjava/util/concurrent/TimeUnit;Ljb/q;Llb/j;I)V

    invoke-virtual {p2}, Ljb/j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p2, p0, Lu4/a;->b:Ljava/lang/Object;

    check-cast p2, Lpa/c;

    invoke-virtual {p0}, Lu4/a;->a()I

    move-result p0

    invoke-virtual {p2, p0}, Lpa/c;->unsubscribe(I)V

    return-object p1
.end method
