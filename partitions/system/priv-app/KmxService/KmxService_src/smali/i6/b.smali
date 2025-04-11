.class public final Li6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Leb/u;

.field public final b:Lio/reactivex/disposables/b;

.field public final c:I

.field public d:Z


# direct methods
.method public constructor <init>(Leb/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6/b;->a:Leb/u;

    new-instance p1, Li6/a;

    invoke-direct {p1}, Li6/a;-><init>()V

    iput-object p1, p0, Li6/b;->b:Lio/reactivex/disposables/b;

    const/4 p1, 0x0

    iput p1, p0, Li6/b;->c:I

    return-void
.end method

.method public constructor <init>(Li6/b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Li6/b;->a:Leb/u;

    new-instance p1, Li6/a;

    invoke-direct {p1}, Li6/a;-><init>()V

    iput-object p1, p0, Li6/b;->b:Lio/reactivex/disposables/b;

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Li6/b;->a:Leb/u;

    iput-object v0, p0, Li6/b;->a:Leb/u;

    iget-object v0, p1, Li6/b;->b:Lio/reactivex/disposables/b;

    iput-object v0, p0, Li6/b;->b:Lio/reactivex/disposables/b;

    iget p1, p1, Li6/b;->c:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Li6/b;->c:I

    return-void
.end method
