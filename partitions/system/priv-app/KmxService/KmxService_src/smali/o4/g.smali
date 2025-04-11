.class public final Lo4/g;
.super Lo4/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lo4/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lo4/h;-><init>(Lo4/f;)V

    return-void
.end method


# virtual methods
.method public final g(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lo4/h;->B:Lo4/f;

    iget-object v0, v0, Lo4/f;->v:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ll4/h;->g(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lo4/h;->B:Lo4/f;

    iget-object v0, v0, Lo4/f;->v:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/RectF;)Z

    invoke-super {p0, p1}, Ll4/h;->g(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void
.end method
