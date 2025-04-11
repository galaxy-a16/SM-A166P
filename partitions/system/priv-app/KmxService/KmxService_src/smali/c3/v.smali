.class public abstract Lc3/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Z

.field public final synthetic c:Lc3/e;

.field public final d:I

.field public final e:Landroid/os/Bundle;

.field public final synthetic f:Lc3/e;


# direct methods
.method public constructor <init>(Lc3/e;ILandroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lc3/v;->f:Lc3/e;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lc3/v;->c:Lc3/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc3/v;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc3/v;->b:Z

    iput p2, p0, Lc3/v;->d:I

    iput-object p3, p0, Lc3/v;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public abstract a(La3/b;)V
.end method

.method public abstract b()Z
.end method
