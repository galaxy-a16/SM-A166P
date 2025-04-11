.class public final Landroidx/sqlite/db/framework/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La1/f;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:La1/c;

.field public final d:Z

.field public final e:Z

.field public final f:Lkotlin/f;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;La1/c;ZZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/sqlite/db/framework/f;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/sqlite/db/framework/f;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/sqlite/db/framework/f;->c:La1/c;

    iput-boolean p4, p0, Landroidx/sqlite/db/framework/f;->d:Z

    iput-boolean p5, p0, Landroidx/sqlite/db/framework/f;->e:Z

    new-instance p1, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$lazyDelegate$1;

    invoke-direct {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$lazyDelegate$1;-><init>(Landroidx/sqlite/db/framework/f;)V

    invoke-static {p1}, Lkotlin/h;->d(Lvb/a;)Lkotlin/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/sqlite/db/framework/f;->f:Lkotlin/f;

    return-void
.end method


# virtual methods
.method public final a()La1/b;
    .locals 1

    iget-object p0, p0, Landroidx/sqlite/db/framework/f;->f:Lkotlin/f;

    invoke-interface {p0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/sqlite/db/framework/e;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/e;->a(Z)La1/b;

    move-result-object p0

    return-object p0
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/sqlite/db/framework/f;->f:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/sqlite/db/framework/e;

    const-string v1, "sQLiteOpenHelper"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_0
    iput-boolean p1, p0, Landroidx/sqlite/db/framework/f;->g:Z

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object p0, p0, Landroidx/sqlite/db/framework/f;->f:Lkotlin/f;

    invoke-interface {p0}, Lkotlin/f;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/sqlite/db/framework/e;

    invoke-virtual {p0}, Landroidx/sqlite/db/framework/e;->close()V

    :cond_0
    return-void
.end method
