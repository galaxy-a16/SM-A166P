.class public final Li4/c;
.super Lp9/d;
.source "SourceFile"


# instance fields
.field public final synthetic n:Lv9/a;

.field public final synthetic o:Li4/e;


# direct methods
.method public constructor <init>(Li4/e;Lv9/a;)V
    .locals 0

    iput-object p1, p0, Li4/c;->o:Li4/e;

    iput-object p2, p0, Li4/c;->n:Lv9/a;

    invoke-direct {p0}, Lp9/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final c0(I)V
    .locals 2

    iget-object v0, p0, Li4/c;->o:Li4/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Li4/e;->m:Z

    iget-object p0, p0, Li4/c;->n:Lv9/a;

    invoke-virtual {p0, p1}, Lv9/a;->O(I)V

    return-void
.end method

.method public final d0(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Li4/c;->o:Li4/e;

    iget v1, v0, Li4/e;->c:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, v0, Li4/e;->n:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    iput-boolean p1, v0, Li4/e;->m:Z

    iget-object p1, v0, Li4/e;->n:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iget-object p0, p0, Li4/c;->n:Lv9/a;

    invoke-virtual {p0, p1, v0}, Lv9/a;->P(Landroid/graphics/Typeface;Z)V

    return-void
.end method
