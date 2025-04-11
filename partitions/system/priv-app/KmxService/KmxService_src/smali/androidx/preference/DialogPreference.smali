.class public abstract Landroidx/preference/DialogPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f03017a

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/a0;->n(Landroid/content/Context;II)I

    move-result v0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p0, Lq0/c;->b:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/16 p1, 0x9

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/a0;->u(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    const/16 p1, 0x8

    const/4 p2, 0x1

    .line 2
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/a0;->u(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    const/4 p1, 0x6

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    :cond_0
    const/16 p1, 0xb

    const/4 p2, 0x3

    .line 4
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/a0;->u(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    const/16 p1, 0xa

    const/4 p2, 0x4

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/a0;->u(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    const/4 p1, 0x5

    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    const/4 p2, 0x7

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 6
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
