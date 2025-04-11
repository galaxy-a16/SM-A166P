.class public final Lcom/google/android/material/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/text/TextPaint;

.field public final b:Lc4/b;

.field public c:F

.field public d:F

.field public e:Z

.field public f:Ljava/lang/ref/WeakReference;

.field public g:Li4/e;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/k;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/l;->a:Landroid/text/TextPaint;

    new-instance v0, Lc4/b;

    invoke-direct {v0, p0, v1}, Lc4/b;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/android/material/internal/l;->b:Lc4/b;

    iput-boolean v1, p0, Lcom/google/android/material/internal/l;->e:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/l;->f:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/l;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/internal/l;->a:Landroid/text/TextPaint;

    if-nez p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, p1, v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    :goto_0
    iput v3, p0, Lcom/google/android/material/internal/l;->c:F

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/material/internal/l;->d:F

    iput-boolean v1, p0, Lcom/google/android/material/internal/l;->e:Z

    return-void
.end method

.method public final b(Li4/e;Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/internal/l;->g:Li4/e;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/google/android/material/internal/l;->g:Li4/e;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/internal/l;->a:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/l;->b:Lc4/b;

    invoke-virtual {p1, p2, v0, v1}, Li4/e;->f(Landroid/content/Context;Landroid/text/TextPaint;Lv9/a;)V

    iget-object v2, p0, Lcom/google/android/material/internal/l;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/k;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/google/android/material/internal/k;->getState()[I

    move-result-object v2

    iput-object v2, v0, Landroid/text/TextPaint;->drawableState:[I

    :cond_0
    invoke-virtual {p1, p2, v0, v1}, Li4/e;->e(Landroid/content/Context;Landroid/text/TextPaint;Lv9/a;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/l;->e:Z

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/internal/l;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/k;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/google/android/material/internal/k;->a()V

    invoke-interface {p0}, Lcom/google/android/material/internal/k;->getState()[I

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/material/internal/k;->onStateChange([I)Z

    :cond_2
    return-void
.end method
