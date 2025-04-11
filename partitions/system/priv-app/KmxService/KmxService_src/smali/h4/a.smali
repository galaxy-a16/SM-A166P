.class public final Lh4/a;
.super Landroidx/appcompat/widget/j0;
.source "SourceFile"


# static fields
.field public static final g:[[I


# instance fields
.field public e:Landroid/content/res/ColorStateList;

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lh4/a;->g:[[I

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    :array_2
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_3
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const v0, 0x7f130510

    const v1, 0x7f0303b8

    invoke-static {p1, p2, v1, v0}, Lv9/a;->g0(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/j0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Ls3/a;->w:[I

    const v4, 0x7f130510

    const/4 v6, 0x0

    new-array v5, v6, [I

    const v3, 0x7f0303b8

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lh9/a;->z(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, v6}, Lv4/b;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Le0/b;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lh4/a;->f:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
    .locals 6

    iget-object v0, p0, Lh4/a;->e:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const v0, 0x7f0300f3

    invoke-static {p0, v0}, Lva/n;->q(Landroid/view/View;I)I

    move-result v0

    const v1, 0x7f030106

    invoke-static {p0, v1}, Lva/n;->q(Landroid/view/View;I)I

    move-result v1

    const v2, 0x7f03011d

    invoke-static {p0, v2}, Lva/n;->q(Landroid/view/View;I)I

    move-result v2

    const/4 v3, 0x4

    new-array v3, v3, [I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4, v0}, Lva/n;->D(IFI)I

    move-result v0

    const/4 v4, 0x0

    aput v0, v3, v4

    const v0, 0x3f0a3d71    # 0.54f

    invoke-static {v2, v0, v1}, Lva/n;->D(IFI)I

    move-result v0

    const/4 v4, 0x1

    aput v0, v3, v4

    const/4 v0, 0x2

    const v4, 0x3ec28f5c    # 0.38f

    invoke-static {v2, v4, v1}, Lva/n;->D(IFI)I

    move-result v5

    aput v5, v3, v0

    const/4 v0, 0x3

    invoke-static {v2, v4, v1}, Lva/n;->D(IFI)I

    move-result v1

    aput v1, v3, v0

    new-instance v0, Landroid/content/res/ColorStateList;

    sget-object v1, Lh4/a;->g:[[I

    invoke-direct {v0, v1, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lh4/a;->e:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object p0, p0, Lh4/a;->e:Landroid/content/res/ColorStateList;

    return-object p0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lh4/a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Le0/b;->a(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lh4/a;->setUseMaterialThemeColors(Z)V

    :cond_0
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 0

    iput-boolean p1, p0, Lh4/a;->f:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lh4/a;->getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Le0/b;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method
