.class public final Li4/b;
.super Lv9/a;
.source "SourceFile"


# instance fields
.field public final g:Landroid/graphics/Typeface;

.field public final h:Li4/a;

.field public i:Z


# direct methods
.method public constructor <init>(Li4/a;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Lv9/a;-><init>()V

    iput-object p2, p0, Li4/b;->g:Landroid/graphics/Typeface;

    iput-object p1, p0, Li4/b;->h:Li4/a;

    return-void
.end method


# virtual methods
.method public final O(I)V
    .locals 0

    iget-boolean p1, p0, Li4/b;->i:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Li4/b;->h:Li4/a;

    iget-object p0, p0, Li4/b;->g:Landroid/graphics/Typeface;

    invoke-interface {p1, p0}, Li4/a;->g(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public final P(Landroid/graphics/Typeface;Z)V
    .locals 0

    iget-boolean p2, p0, Li4/b;->i:Z

    if-nez p2, :cond_0

    iget-object p0, p0, Li4/b;->h:Li4/a;

    invoke-interface {p0, p1}, Li4/a;->g(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
