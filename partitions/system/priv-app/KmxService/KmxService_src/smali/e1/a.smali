.class public final Le1/a;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lb4/a;


# direct methods
.method public constructor <init>(Lb4/a;)V
    .locals 0

    iput-object p1, p0, Le1/a;->a:Lb4/a;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Le1/a;->a:Lb4/a;

    iget-object p0, p0, Lb4/a;->b:Lb4/c;

    iget-object p0, p0, Lb4/c;->p:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object p0, p0, Le1/a;->a:Lb4/a;

    iget-object p0, p0, Lb4/a;->b:Lb4/c;

    iget-object v0, p0, Lb4/c;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lb4/c;->v:[I

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-static {p1, p0}, Lx/b;->g(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method
