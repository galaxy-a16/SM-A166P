.class public final Landroidx/core/view/z1;
.super Landroidx/core/view/y1;
.source "SourceFile"


# static fields
.field public static final f:Landroidx/core/view/c2;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/core/view/c2;->g(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/c2;

    move-result-object v0

    sput-object v0, Landroidx/core/view/z1;->f:Landroidx/core/view/c2;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/c2;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/view/y1;-><init>(Landroidx/core/view/c2;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public f(I)Lw/c;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/v1;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Landroidx/core/view/b2;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, Lw/c;->c(Landroid/graphics/Insets;)Lw/c;

    move-result-object p0

    return-object p0
.end method
