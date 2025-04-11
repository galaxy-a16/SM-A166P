.class public final Lio/reactivex/rxjava3/internal/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Ljava/lang/Object;

.field public b:[Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/util/a;->a:[Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/util/a;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lio/reactivex/rxjava3/internal/util/a;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/util/a;->b:[Ljava/lang/Object;

    aput-object v0, v2, v1

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/util/a;->b:[Ljava/lang/Object;

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/util/a;->b:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/rxjava3/internal/util/a;->c:I

    return-void
.end method
