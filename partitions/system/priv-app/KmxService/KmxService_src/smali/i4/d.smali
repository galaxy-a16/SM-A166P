.class public final Li4/d;
.super Lv9/a;
.source "SourceFile"


# instance fields
.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Landroid/text/TextPaint;

.field public final synthetic i:Lv9/a;

.field public final synthetic j:Li4/e;


# direct methods
.method public constructor <init>(Li4/e;Landroid/content/Context;Landroid/text/TextPaint;Lv9/a;)V
    .locals 0

    iput-object p1, p0, Li4/d;->j:Li4/e;

    iput-object p2, p0, Li4/d;->g:Landroid/content/Context;

    iput-object p3, p0, Li4/d;->h:Landroid/text/TextPaint;

    iput-object p4, p0, Li4/d;->i:Lv9/a;

    invoke-direct {p0}, Lv9/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final O(I)V
    .locals 0

    iget-object p0, p0, Li4/d;->i:Lv9/a;

    invoke-virtual {p0, p1}, Lv9/a;->O(I)V

    return-void
.end method

.method public final P(Landroid/graphics/Typeface;Z)V
    .locals 3

    iget-object v0, p0, Li4/d;->h:Landroid/text/TextPaint;

    iget-object v1, p0, Li4/d;->j:Li4/e;

    iget-object v2, p0, Li4/d;->g:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p1}, Li4/e;->g(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object p0, p0, Li4/d;->i:Lv9/a;

    invoke-virtual {p0, p1, p2}, Lv9/a;->P(Landroid/graphics/Typeface;Z)V

    return-void
.end method
