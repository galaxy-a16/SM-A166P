.class public final Lo4/f;
.super Ll4/g;
.source "SourceFile"


# instance fields
.field public final v:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Ll4/k;Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ll4/g;-><init>(Ll4/k;)V

    iput-object p2, p0, Lo4/f;->v:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Lo4/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ll4/g;-><init>(Ll4/g;)V

    iget-object p1, p1, Lo4/f;->v:Landroid/graphics/RectF;

    iput-object p1, p0, Lo4/f;->v:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lo4/g;

    invoke-direct {v0, p0}, Lo4/g;-><init>(Lo4/f;)V

    invoke-virtual {v0}, Ll4/h;->invalidateSelf()V

    return-object v0
.end method
