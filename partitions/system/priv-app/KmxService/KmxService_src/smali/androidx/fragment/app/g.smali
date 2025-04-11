.class public final synthetic Landroidx/fragment/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/os/e;
.implements Lt2/i;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Ljava/lang/Object;Landroidx/fragment/app/h;Landroidx/fragment/app/y1;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/g;->a:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/g;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/g;->c:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/g;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/g;->a:Ljava/lang/Object;

    check-cast v0, Lt2/k;

    iget-object v1, p0, Landroidx/fragment/app/g;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/fragment/app/g;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object p0, p0, Landroidx/fragment/app/g;->d:Ljava/lang/Object;

    check-cast p0, Lp1/i;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lt2/k;->f:Ll2/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance v1, Lr2/b;

    const/4 v3, 0x4

    invoke-direct {v1, v0, v2, p0, v3}, Lr2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p1, v1}, Lt2/k;->z(Landroid/database/Cursor;Lt2/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq2/a;

    return-object p0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/g;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/g;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/m;

    iget-object v2, p0, Landroidx/fragment/app/g;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/g;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/y1;

    const-string v3, "this$0"

    invoke-static {v1, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$animationInfo"

    invoke-static {v2, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$operation"

    invoke-static {p0, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v1, v1, Landroidx/fragment/app/a2;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    invoke-virtual {v2}, Landroidx/fragment/app/i;->a()V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/y0;->I(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Animation from operation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has been cancelled."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
