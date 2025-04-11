.class public abstract Ll9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzb/c;
.implements Lzb/a;


# static fields
.field public static final synthetic a:I

.field public static final b:Lcom/google/gson/internal/e;

.field public static final synthetic c:I

.field public static final d:Lcom/google/gson/internal/c;

.field public static final e:[Ljava/lang/Object;

.field public static f:Ls9/d;

.field public static final g:[B


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/gson/internal/e;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/google/gson/internal/e;-><init>(I)V

    sput-object v0, Ll9/b;->b:Lcom/google/gson/internal/e;

    new-instance v0, Lcom/google/gson/internal/c;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/gson/internal/c;-><init>(I)V

    sput-object v0, Ll9/b;->d:Lcom/google/gson/internal/c;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Ll9/b;->e:[Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Ll9/b;->g:[B

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static B0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string v0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static C0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    const-string p0, "invalid"

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v0, -0x5

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static D0(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    array-length v2, p0

    array-length v3, p0

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p2, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-static {p2, p0}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/d0;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static E0(Ljava/lang/Class;)V
    .locals 4

    new-instance v0, Lio/reactivex/exceptions/ProtocolViolationException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "It is not allowed to subscribe with a(n) "

    const-string v2, " multiple times. Please create a fresh instance of "

    const-string v3, " and subscribe that to the target source instead."

    invoke-static {v1, p0, v2, p0, v3}, Landroidx/activity/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/reactivex/exceptions/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lv4/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static F0(Ljava/lang/Class;)V
    .locals 4

    new-instance v0, Lio/reactivex/rxjava3/exceptions/ProtocolViolationException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "It is not allowed to subscribe with a(n) "

    const-string v2, " multiple times. Please create a fresh instance of "

    const-string v3, " and subscribe that to the target source instead."

    invoke-static {v1, p0, v2, p0, v3}, Landroidx/activity/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/exceptions/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lv4/b;->Q(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final G(Lvb/d;Ljava/nio/file/Path;Ljava/nio/file/Path;Lvb/d;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;
    .locals 2

    :try_start_0
    sget-object v0, Lkotlin/io/path/b;->a:Lkotlin/io/path/b;

    invoke-static {p1, p2, p4}, Ll9/b;->P(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {p0, v0, p4, v1}, Lvb/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/io/path/CopyActionResult;

    sget-object v0, Lkotlin/io/path/i;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    goto :goto_0

    :cond_2
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p3, p1, p2, p4, p0}, Ll9/b;->Q(Lvb/d;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final G0(Lokio/SegmentedByteString;I)I
    .locals 4

    const-string v0, "$this$segment"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object p0

    array-length p0, p0

    const-string v1, "$this$binarySearch"

    invoke-static {v0, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p0, :cond_1

    add-int v2, v1, p0

    ushr-int/lit8 v2, v2, 0x1

    aget v3, v0, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_2

    add-int/lit8 p0, v2, -0x1

    goto :goto_0

    :cond_1
    neg-int p0, v1

    add-int/lit8 v2, p0, -0x1

    :cond_2
    if-ltz v2, :cond_3

    goto :goto_1

    :cond_3
    not-int v2, v2

    :goto_1
    return v2
.end method

.method public static final H(Lbc/a;Lbc/c;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lbc/f;->j:Lcom/google/gson/internal/d;

    invoke-virtual {v0}, Lcom/google/gson/internal/d;->a()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lbc/c;->f:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array v2, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%-22s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lbc/a;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method public static H0(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 3

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/h0;->a(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    :goto_1
    invoke-static {p0, v2}, Landroidx/core/view/i0;->s(Landroid/view/View;I)V

    return-void
.end method

.method public static I(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    array-length v2, p0

    array-length v3, p0

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p2, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-static {v0, p0}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, p2}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :goto_0
    if-eqz p3, :cond_1

    invoke-static {v0, p3}, Lx/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eq p0, v0, :cond_2

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/d0;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public static final I0()V
    .locals 2

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static J(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "<br>"

    goto :goto_0

    :cond_0
    const-string p1, "\n"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u200e"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(?i)"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static final J0(ILkotlinx/serialization/descriptors/g;)V
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    not-int p0, p0

    const/4 v1, 0x0

    and-int/2addr p0, v1

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Lkotlinx/serialization/descriptors/g;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlinx/serialization/MissingFieldException;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/util/List;Ljava/lang/String;)V

    throw p0
.end method

.method public static K(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 9

    invoke-static {p0, p1, p2}, Ll9/b;->L(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    invoke-static {p0, p1, p3}, Ll9/b;->L(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    const/16 v1, 0x82

    const/16 v3, 0x21

    const/16 v4, 0x42

    const/16 v5, 0x11

    const/4 v6, 0x1

    if-eq p0, v5, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v4, :cond_2

    if-ne p0, v1, :cond_1

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p3, Landroid/graphics/Rect;->top:I

    if-gt v7, v8, :cond_5

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p3, Landroid/graphics/Rect;->left:I

    if-gt v7, v8, :cond_5

    goto :goto_0

    :cond_3
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v8, :cond_5

    goto :goto_0

    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    if-lt v7, v8, :cond_5

    :goto_0
    move v7, v6

    goto :goto_1

    :cond_5
    move v7, v2

    :goto_1
    if-nez v7, :cond_6

    return v6

    :cond_6
    if-eq p0, v5, :cond_d

    if-ne p0, v4, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p0, p1, p2}, Ll9/b;->q0(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p2

    if-eq p0, v5, :cond_b

    if-eq p0, v3, :cond_a

    if-eq p0, v4, :cond_9

    if-ne p0, v1, :cond_8

    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    iget p0, p3, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_a
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p3, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_b
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p3, Landroid/graphics/Rect;->left:I

    :goto_2
    sub-int/2addr p0, p1

    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-ge p2, p0, :cond_c

    move v2, v6

    :cond_c
    return v2

    :cond_d
    :goto_3
    return v6

    :cond_e
    :goto_4
    return v2
.end method

.method public static final K0(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 5

    const-string v0, "collection"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    sget-object v1, Ll9/b;->e:[Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_0
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    array-length v0, v1

    if-lt v2, v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v0, v0, 0x1

    if-gt v0, v2, :cond_4

    const v0, 0x7ffffffd

    if-ge v2, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    :cond_4
    :goto_1
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v0, "copyOf(result, newSize)"

    invoke-static {v1, v0}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string p0, "copyOf(result, size)"

    invoke-static {v1, p0}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object v1

    :cond_6
    :goto_3
    move v0, v2

    goto :goto_0
.end method

.method public static L(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_3

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lt p0, v0, :cond_2

    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-gt p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lt p0, v0, :cond_4

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p0, p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public static final L0(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    const-string v0, "collection"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    array-length p0, p1

    if-lez p0, :cond_8

    aput-object v1, p1, v2

    goto/16 :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    array-length p0, p1

    if-lez p0, :cond_8

    aput-object v1, p1, v2

    goto :goto_2

    :cond_1
    array-length v3, p1

    if-gt v0, v3, :cond_2

    move-object v0, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v0, v3}, Li4/f;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    array-length v2, v0

    if-lt v3, v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    move-object p1, v0

    goto :goto_2

    :cond_3
    mul-int/lit8 v2, v3, 0x3

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1

    if-gt v2, v3, :cond_5

    const v2, 0x7ffffffd

    if-ge v3, v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    :cond_5
    :goto_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "copyOf(result, newSize)"

    invoke-static {v0, v2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    if-ne v0, p1, :cond_7

    aput-object v1, p1, v3

    goto :goto_2

    :cond_7
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "copyOf(result, size)"

    invoke-static {p0, p1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, p0

    :cond_8
    :goto_2
    return-object p1

    :cond_9
    :goto_3
    move v2, v3

    goto :goto_0
.end method

.method public static final M(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "builder"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/collections/builders/ListBuilder;

    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder;->build()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final M0(Ljava/lang/String;)Lkotlin/m;
    .locals 9

    const/16 v0, 0xa

    invoke-static {v0}, Li4/f;->l(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    invoke-static {v4, v5}, Li4/f;->o(II)I

    move-result v5

    if-gez v5, :cond_2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_3

    :cond_1
    return-object v2

    :cond_2
    move v5, v3

    :cond_3
    const v4, 0x71c71c7

    move v6, v4

    :goto_0
    if-ge v5, v1, :cond_8

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v0}, Ljava/lang/Character;->digit(II)I

    move-result v7

    if-gez v7, :cond_4

    return-object v2

    :cond_4
    invoke-static {v3, v6}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v8

    if-lez v8, :cond_6

    if-ne v6, v4, :cond_5

    const/4 v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v8

    if-lez v8, :cond_6

    :cond_5
    return-object v2

    :cond_6
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v7, v3

    invoke-static {v7, v3}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v3

    if-gez v3, :cond_7

    return-object v2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_0

    :cond_8
    new-instance p0, Lkotlin/m;

    invoke-direct {p0, v3}, Lkotlin/m;-><init>(I)V

    return-object p0
.end method

.method public static final N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Channel was consumed, consumer had failed"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/a0;->a(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final N0(Ljava/lang/String;)Lkotlin/o;
    .locals 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {v0}, Li4/f;->l(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    invoke-static {v3, v4}, Li4/f;->o(II)I

    move-result v4

    if-gez v4, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v3, v0

    const-wide v5, 0x71c71c71c71c71cL

    const-wide/16 v7, 0x0

    move-wide v9, v5

    :goto_0
    if-ge v2, v1, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11, v0}, Ljava/lang/Character;->digit(II)I

    move-result v11

    if-gez v11, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v12

    if-lez v12, :cond_3

    cmp-long v9, v9, v5

    if-nez v9, :cond_4

    const-wide/16 v9, -0x1

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v12

    if-lez v12, :cond_3

    goto :goto_1

    :cond_3
    mul-long/2addr v7, v3

    int-to-long v11, v11

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    add-long/2addr v11, v7

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v7

    if-gez v7, :cond_5

    :cond_4
    :goto_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move-wide v7, v11

    goto :goto_0

    :cond_6
    new-instance p0, Lkotlin/o;

    invoke-direct {p0, v7, v8}, Lkotlin/o;-><init>(J)V

    :goto_2
    return-object p0
.end method

.method public static O(I)Landroid/widget/ImageView$ScaleType;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    return-object p0

    :cond_0
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    return-object p0

    :cond_1
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    return-object p0

    :cond_2
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    return-object p0

    :cond_3
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    return-object p0

    :cond_4
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    return-object p0

    :cond_5
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public static O0(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Lva/n;->y(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-static {v0, v3}, Lva/n;->Q(Landroid/content/Context;Z)V

    return-void

    :cond_0
    invoke-static/range {p0 .. p0}, Lva/n;->o(Landroid/content/Context;)J

    move-result-wide v4

    monitor-enter v1

    :try_start_0
    const-string v2, "last_set_upload_alarm_for_init_time"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7, v2}, Le9/b;->g(JLjava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    monitor-exit v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v2, v12, v4

    const/4 v14, 0x0

    if-ltz v2, :cond_1

    sget-wide v15, Lb9/a;->j:J

    add-long/2addr v15, v8

    cmp-long v2, v12, v15

    if-ltz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v14

    :goto_0
    if-eqz v2, :cond_3

    sget-boolean v1, Lva/n;->c:Z

    if-eqz v1, :cond_2

    const-string v1, "n"

    const-string v2, "uploadAlarmForInit is already canceled"

    invoke-static {v1, v2}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    invoke-static/range {p0 .. p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    monitor-enter v1

    :try_start_1
    const-string v2, "last_set_upload_alarm_for_init_time"

    invoke-virtual {v1, v2, v4, v5}, Le9/b;->v(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    new-instance v1, Lp9/c;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_CLIENTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lb9/a;->h:J

    add-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5, v3}, Lv4/b;->V(Landroid/content/Context;Lp9/c;JI)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    monitor-enter v1

    :try_start_2
    const-string v2, "last_upload_try_time"

    invoke-virtual {v1, v6, v7, v2}, Le9/b;->g(JLjava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit v1

    cmp-long v2, v10, v2

    if-gez v2, :cond_4

    const-string v2, "b"

    const-string v3, "device time is changed. update last upload time"

    invoke-static {v2, v3}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter v1

    :try_start_3
    const-string v2, "last_upload_try_time"

    invoke-virtual {v1, v2, v10, v11}, Le9/b;->v(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v1

    monitor-enter v1

    :try_start_4
    const-string v2, "last_set_upload_alarm_for_init_time"

    invoke-virtual {v1, v2, v10, v11}, Le9/b;->v(Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    sub-long/2addr v4, v10

    sget-wide v1, Lb9/a;->j:J

    add-long/2addr v8, v1

    sub-long/2addr v8, v10

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-string v3, "b"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "until upload period : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", until cooling time : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "b"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "next upload will be available after "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v5, Lb9/a;->b:J

    div-long/2addr v1, v5

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " minutes"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {v0, v14}, Lh9/a;->e(Landroid/content/Context;Z)V

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final P(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p2, p0}, Lkotlin/io/path/g;->a(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const-string p1, "target.resolve(relativePath.pathString)"

    invoke-static {p0, p1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nthis path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\nbase path: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final Q(Lvb/d;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;
    .locals 0

    invoke-static {p1, p2, p3}, Ll9/b;->P(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p0, p3, p1, p4}, Lvb/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/io/path/OnErrorResult;

    sget-object p1, Lkotlin/io/path/i;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    sget-object p0, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    :goto_0
    return-object p0
.end method

.method public static final R(Lvb/b;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    invoke-virtual {p0, p1}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->create(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object v0

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    if-ne v0, v1, :cond_1

    new-instance v0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$1;

    invoke-direct {v0, p1, p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$1;-><init>(Lkotlin/coroutines/d;Lvb/b;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v1, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2;

    invoke-direct {v1, p1, v0, p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/i;Lvb/b;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static final S(Lvb/c;Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object v0

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    if-ne v0, v1, :cond_1

    new-instance v0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;

    invoke-direct {v0, p2, p0, p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;-><init>(Lkotlin/coroutines/d;Lvb/c;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v1, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;

    invoke-direct {v1, p2, v0, p0, p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/i;Lvb/c;Ljava/lang/Object;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static T(Lio/netty/buffer/ByteBuf;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    const/16 v2, 0x15

    if-le v0, v2, :cond_1

    const/4 p0, -0x2

    return p0

    :cond_1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, v0

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_0

    const/4 p0, 0x7

    if-le v0, p0, :cond_3

    if-nez v2, :cond_3

    const/4 p0, -0x3

    return p0

    :cond_3
    return v1
.end method

.method public static V(ILio/netty/buffer/ByteBuf;)V
    .locals 1

    :cond_0
    and-int/lit8 v0, p0, 0x7f

    ushr-int/lit8 p0, p0, 0x7

    if-lez p0, :cond_1

    or-int/lit16 v0, v0, 0x80

    :cond_1
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    if-gtz p0, :cond_0

    return-void
.end method

.method public static W(I)I
    .locals 1

    const/16 v0, 0x7f

    if-le p0, v0, :cond_2

    const/16 v0, 0x3fff

    if-le p0, v0, :cond_1

    const v0, 0x1fffff

    if-le p0, v0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final X(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;Landroidx/activity/result/l;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    sget-object v2, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-interface {p0, p1, v0}, Ljava/nio/file/SecureDirectoryStream;->newDirectoryStream(Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/SecureDirectoryStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    const-string v2, "entry.fileName"

    invoke-static {v0, v2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Ll9/b;->h0(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;Landroidx/activity/result/l;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-static {p0, v1}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {p0, p1}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    invoke-virtual {p2, p0}, Landroidx/activity/result/l;->a(Ljava/lang/Exception;)V

    :cond_1
    :goto_3
    return-void
.end method

.method public static Y(Ljava/util/Map;)[B
    .locals 2

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    :cond_0
    new-instance v0, Lma/c;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lma/c;-><init>(I)V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Map$Entry;->comparingByKey(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static final Z(Lkotlinx/serialization/internal/b;Lzb/d;Ljava/lang/Object;)Lkotlinx/serialization/c;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lzb/d;->c()Lkotlinx/serialization/modules/b;

    move-result-object p1

    check-cast p0, Lkotlinx/serialization/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "baseClass"

    iget-object p0, p0, Lkotlinx/serialization/e;->a:Lkotlin/reflect/c;

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lv9/a;->t(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p1, Lkotlinx/serialization/modules/b;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/c;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lkotlinx/serialization/c;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    iget-object p1, p1, Lkotlinx/serialization/modules/b;->c:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Li4/g;->q(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p1, Lvb/b;

    goto :goto_2

    :cond_4
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_5

    invoke-interface {p1, p2}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/serialization/c;

    goto :goto_4

    :cond_5
    :goto_3
    move-object v0, v1

    :goto_4
    if-nez v0, :cond_7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/jvm/internal/j;->b()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_6
    invoke-static {p2, p0}, Lp9/d;->s0(Ljava/lang/String;Lkotlin/reflect/c;)V

    throw v1

    :cond_7
    return-object v0
.end method

.method public static final a0(J)Ljava/lang/String;
    .locals 12

    const v0, -0x3b9328e0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    const-string v1, " s "

    const v2, 0x3b9aca00

    const v3, 0x1dcd6500

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v3, v3

    sub-long/2addr p0, v3

    :goto_0
    int-to-long v2, v2

    div-long/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_0
    const v0, -0xf404c

    int-to-long v4, v0

    cmp-long v0, p0, v4

    const-string v4, " ms"

    const v5, 0xf4240

    const v6, 0x7a120

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v1, v6

    sub-long/2addr p0, v1

    :goto_2
    int-to-long v1, v5

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v0, p0, v7

    const-string v7, " \u00b5s"

    const/16 v8, 0x3e8

    const/16 v9, 0x1f4

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v1, v9

    sub-long/2addr p0, v1

    :goto_3
    int-to-long v1, v8

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const v0, 0xf404c

    int-to-long v10, v0

    cmp-long v0, p0, v10

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v1, v9

    add-long/2addr p0, v1

    goto :goto_3

    :cond_3
    const v0, 0x3b9328e0

    int-to-long v7, v0

    cmp-long v0, p0, v7

    if-gez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v1, v6

    add-long/2addr p0, v1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v3, v3

    add-long/2addr p0, v3

    goto :goto_0

    :goto_4
    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%6s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.lang.String.format(format, *args)"

    invoke-static {p0, p1}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/core/util/d;

    new-instance v1, Landroidx/core/util/d;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroidx/core/util/d;

    const-string v2, "key"

    invoke-direct {v1, v2, p1}, Landroidx/core/util/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lp9/d;->m([Landroidx/core/util/d;)V

    sget v0, Ll9/b;->a:I

    const-string v0, "getAppReferrerData"

    invoke-static {p0, v0}, Lva/n;->H(Landroid/content/Context;Ljava/lang/String;)Lc9/b;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    const-string v7, "get app referrer error."

    const-string v2, "appreferrer"

    const-string v3, "value"

    const-string v4, "key=?"

    const-string v6, "value"

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lc9/b;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {p0}, Lc9/b;->c()V

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static c0(I)I
    .locals 2

    if-lez p0, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    if-lez p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The size must be greater than zero."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d0(Ljava/util/List;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final e0(Lkotlin/coroutines/d;)Lkotlinx/coroutines/h;
    .locals 2

    instance-of v0, p0, Lkotlinx/coroutines/internal/e;

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/h;-><init>(ILkotlin/coroutines/d;)V

    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/e;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/e;->g()Lkotlinx/coroutines/h;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lkotlinx/coroutines/h;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    new-instance v0, Lkotlinx/coroutines/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/h;-><init>(ILkotlin/coroutines/d;)V

    return-object v0
.end method

.method public static f0(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/util/Pair;
    .locals 11

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "type3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :pswitch_1
    const-string v1, "type2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :pswitch_2
    const-string v1, "type1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/4 v5, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    move-object v1, v5

    goto :goto_2

    :cond_3
    const-string v1, "lang3"

    goto :goto_2

    :cond_4
    const-string v1, "lang2"

    goto :goto_2

    :cond_5
    const-string v1, "lang1"

    :goto_2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_6

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_6
    const-string v2, "bURL"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fname"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "/"

    const-string v6, "b"

    if-eqz v2, :cond_e

    if-eqz p0, :cond_e

    if-nez v0, :cond_7

    goto/16 :goto_7

    :cond_7
    invoke-static {}, Lfc/e;->n()Ljava/lang/String;

    move-result-object v7

    move v8, v4

    :goto_3
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_9

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v8, v7

    goto :goto_4

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    move-object v8, v5

    :goto_4
    if-nez v8, :cond_c

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    :goto_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_b

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    move-object v8, v9

    goto :goto_6

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    move-object v8, v5

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use sub locale : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-nez v8, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot get resource locale:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". use default url"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fail to get res url by locale."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_e
    :goto_7
    const-string p0, "fail to get res url by locale. invalid params"

    :goto_8
    invoke-static {v6, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    :goto_9
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x69b5837
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g0(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "b"

    :try_start_0
    invoke-static {}, Lfc/e;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use sub locale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "use default locale"

    move-object v3, v1

    move-object v1, v2

    :goto_1
    invoke-static {v0, v1}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$LocaleNotMatchException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$LocaleNotMatchException;-><init>()V

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid text resource. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0
.end method

.method public static final h0(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;Landroidx/activity/result/l;)V
    .locals 5

    iget-object v0, p2, Landroidx/activity/result/l;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/file/Path;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p2, Landroidx/activity/result/l;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/nio/file/LinkOption;

    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v4, 0x0

    aput-object v3, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-class v3, Ljava/nio/file/attribute/BasicFileAttributeView;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/LinkOption;

    invoke-interface {p0, p1, v3, v0}, Ljava/nio/file/SecureDirectoryStream;->getFileAttributeView(Ljava/lang/Object;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :cond_1
    if-eqz v4, :cond_2

    iget v0, p2, Landroidx/activity/result/l;->b:I

    invoke-static {p0, p1, p2}, Ll9/b;->X(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;Landroidx/activity/result/l;)V

    iget v2, p2, Landroidx/activity/result/l;->b:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v0, v2, :cond_3

    :try_start_3
    invoke-interface {p0, p1}, Ljava/nio/file/SecureDirectoryStream;->deleteDirectory(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-interface {p0, p1}, Ljava/nio/file/SecureDirectoryStream;->deleteFile(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p2, p0}, Landroidx/activity/result/l;->a(Ljava/lang/Exception;)V

    :catch_2
    :cond_3
    :goto_2
    iget-object p0, p2, Landroidx/activity/result/l;->d:Ljava/lang/Object;

    check-cast p0, Ljava/nio/file/Path;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p0

    goto :goto_3

    :cond_4
    move-object p0, v1

    :goto_3
    invoke-static {p1, p0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, p2, Landroidx/activity/result/l;->d:Ljava/lang/Object;

    check-cast p0, Ljava/nio/file/Path;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    :cond_5
    iput-object v1, p2, Landroidx/activity/result/l;->d:Ljava/lang/Object;

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final j0(Ljava/nio/file/Path;Landroidx/activity/result/l;)V
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    sget-object v2, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/activity/result/l;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    const-string v5, "entry"

    invoke-static {v4, v5}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p1}, Ll9/b;->j0(Ljava/nio/file/Path;Landroidx/activity/result/l;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-static {v2, v1}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-static {v2, v1}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    :try_start_6
    invoke-virtual {p1, v1}, Landroidx/activity/result/l;->a(Ljava/lang/Exception;)V

    :cond_1
    :goto_3
    iget v1, p1, Landroidx/activity/result/l;->b:I

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    invoke-virtual {p1, p0}, Landroidx/activity/result/l;->a(Ljava/lang/Exception;)V

    :cond_3
    :goto_4
    return-void
.end method

.method public static final k0(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->intercepted()Lkotlin/coroutines/d;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static l0(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_9

    const/16 v0, 0x21

    if-eq p0, v0, :cond_6

    const/16 v0, 0x42

    if-eq p0, v0, :cond_3

    const/16 v0, 0x82

    if-ne p0, v0, :cond_2

    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-lt p0, v0, :cond_0

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p0, v0, :cond_1

    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    if-ge p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-lt p0, v0, :cond_4

    iget p0, p1, Landroid/graphics/Rect;->right:I

    if-gt p0, v0, :cond_5

    :cond_4
    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    if-ge p0, p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1

    :cond_6
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-gt p0, v0, :cond_7

    iget p0, p1, Landroid/graphics/Rect;->top:I

    if-lt p0, v0, :cond_8

    :cond_7
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->top:I

    if-le p0, p1, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_2
    return v1

    :cond_9
    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-gt p0, v0, :cond_a

    iget p0, p1, Landroid/graphics/Rect;->left:I

    if-lt p0, v0, :cond_b

    :cond_a
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->left:I

    if-le p0, p1, :cond_b

    goto :goto_3

    :cond_b
    move v1, v2

    :goto_3
    return v1
.end method

.method public static m0(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/k;IIJI[I)Z
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const-string v3, "utc0"

    iget-object v4, v1, Lcom/samsung/android/sdk/smp/marketing/k;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "b"

    const/4 v6, 0x0

    if-nez v3, :cond_0

    const-string v3, "local"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "invalid timeBase"

    invoke-static {v5, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_0
    iget-object v3, v1, Lcom/samsung/android/sdk/smp/marketing/k;->d:Landroidx/core/view/s;

    iget-object v4, v1, Lcom/samsung/android/sdk/smp/marketing/k;->e:Landroidx/core/view/s;

    invoke-static {p0, v3, v4, v6}, Ll9/b;->n0(Ljava/lang/String;Landroidx/core/view/s;Landroidx/core/view/s;Z)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v1, "invalid displayTime"

    invoke-static {v5, p0, v1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_1
    iget-object v3, v1, Lcom/samsung/android/sdk/smp/marketing/k;->f:Landroidx/core/view/s;

    iget-object v4, v1, Lcom/samsung/android/sdk/smp/marketing/k;->g:Landroidx/core/view/s;

    const/4 v7, 0x1

    invoke-static {p0, v3, v4, v7}, Ll9/b;->n0(Ljava/lang/String;Landroidx/core/view/s;Landroidx/core/view/s;Z)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v1, "invalid doNotDisturbTime"

    invoke-static {v5, p0, v1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_2
    iget-wide v3, v1, Lcom/samsung/android/sdk/smp/marketing/k;->b:J

    const-wide/16 v8, 0x0

    cmp-long v10, v3, v8

    if-ltz v10, :cond_b

    iget-wide v10, v1, Lcom/samsung/android/sdk/smp/marketing/k;->c:J

    cmp-long v1, v10, v8

    if-ltz v1, :cond_b

    cmp-long v1, v3, v10

    if-ltz v1, :cond_3

    goto :goto_2

    :cond_3
    if-ltz v2, :cond_a

    const/16 v1, 0x5a0

    if-le v2, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    move v2, p3

    if-ge v2, v1, :cond_5

    const-string v1, "invalid cctime"

    invoke-static {v5, p0, v1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_5
    cmp-long v1, p4, v8

    if-ltz v1, :cond_9

    cmp-long v1, p4, v10

    if-lez v1, :cond_6

    goto :goto_0

    :cond_6
    if-gez p6, :cond_7

    const-string v1, "invalid screenOnTime"

    invoke-static {v5, p0, v1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_7
    aget v0, p7, v6

    aget v1, p7, v7

    if-le v0, v1, :cond_8

    const-string v0, "invalid feedbackDispersion"

    invoke-static {v5, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_8
    return v7

    :cond_9
    :goto_0
    const-string v1, "invalid clearTime"

    invoke-static {v5, p0, v1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_a
    :goto_1
    const-string v1, "invalid random"

    invoke-static {v5, p0, v1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_b
    :goto_2
    const-string v1, "invalid ttl"

    invoke-static {v5, p0, v1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method

.method public static n0(Ljava/lang/String;Landroidx/core/view/s;Landroidx/core/view/s;Z)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget p3, p1, Landroidx/core/view/s;->b:I

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    iget p3, p2, Landroidx/core/view/s;->b:I

    if-ne p3, v1, :cond_0

    return v0

    :cond_0
    iget p3, p1, Landroidx/core/view/s;->b:I

    sget v1, Lkotlin/jvm/internal/m;->d:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-ltz p3, :cond_2

    if-le p3, v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v0

    :goto_1
    if-nez v3, :cond_d

    iget v3, p2, Landroidx/core/view/s;->b:I

    if-ltz v3, :cond_4

    if-le v3, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v0

    :goto_3
    if-eqz v1, :cond_5

    goto :goto_9

    :cond_5
    iget p1, p1, Landroidx/core/view/s;->c:I

    const/16 v1, 0x3b

    if-ltz p1, :cond_7

    if-le p1, v1, :cond_6

    goto :goto_4

    :cond_6
    move v4, v2

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v0

    :goto_5
    if-nez v4, :cond_c

    iget p2, p2, Landroidx/core/view/s;->c:I

    if-ltz p2, :cond_9

    if-le p2, v1, :cond_8

    goto :goto_6

    :cond_8
    move v1, v2

    goto :goto_7

    :cond_9
    :goto_6
    move v1, v0

    :goto_7
    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    if-ne p3, v3, :cond_b

    if-ne p1, p2, :cond_b

    const-string p1, "invalid time range : start and end time are same"

    goto :goto_a

    :cond_b
    return v0

    :cond_c
    :goto_8
    const-string p1, "invalid time range : min"

    goto :goto_a

    :cond_d
    :goto_9
    const-string p1, "invalid time range : hour"

    :goto_a
    const-string p2, "b"

    invoke-static {p2, p0, p1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static final o0(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "singletonList(element)"

    invoke-static {p0, v0}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final varargs p0([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    array-length v0, p0

    if-lez v0, :cond_0

    invoke-static {p0}, Lkotlin/collections/l;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    return-object p0
.end method

.method public static q0(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    sub-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized r0(Landroid/content/Context;)V
    .locals 3

    const-class v0, Ll9/b;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v2, "ppmt_migr"

    invoke-virtual {v1, v2}, Le9/b;->a(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    if-nez v2, :cond_1

    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Lc9/b;->N(Landroid/content/Context;)V

    invoke-virtual {v2}, Lc9/b;->c()V

    :cond_0
    invoke-virtual {v1, p0}, Lf9/c;->M(Landroid/content/Context;)V

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string p0, "ppmt_migr"

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Le9/b;->r(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v1

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static s0(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_2

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_2

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    goto :goto_1

    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    :goto_1
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p0

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public static final t0(Ljava/util/List;)Ljava/util/List;
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ll9/b;->o0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    return-object p0
.end method

.method public static u0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/g;
    .locals 2

    const-string v0, "b"

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-ltz p4, :cond_3

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "marketingType"

    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/sdk/smp/marketing/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/g;

    move-result-object p2

    instance-of p3, p2, Lcom/samsung/android/sdk/smp/marketing/l;

    if-eqz p3, :cond_0

    new-instance p3, Lcom/samsung/android/sdk/smp/marketing/m;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/samsung/android/sdk/smp/marketing/m;-><init>(I)V

    goto :goto_0

    :cond_0
    instance-of p3, p2, Lcom/samsung/android/sdk/smp/marketing/n;

    if-eqz p3, :cond_2

    new-instance p3, Lcom/samsung/android/sdk/smp/marketing/m;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Lcom/samsung/android/sdk/smp/marketing/m;-><init>(I)V

    :goto_0
    invoke-virtual {p3, p0, p2, v1}, Lcom/samsung/android/sdk/smp/marketing/m;->A0(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/g;Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/g;->p()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p2

    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;-><init>()V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "invalid appdata. "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0

    :cond_3
    const-string p0, "invalid appdata"

    invoke-static {v0, p1, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0
.end method

.method public static v0(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/k;
    .locals 12

    const-string v0, "timeBase"

    const-string v1, "local"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "cardDisplayTime"

    const-class v2, Ljava/lang/Integer;

    invoke-static {p1, p0, v0, v2}, Ll9/b;->y0(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v2, Lb9/b;->a:Ljava/util/List;

    const-string v4, "cardDisplayTimeMin"

    invoke-static {p1, p0, v4, v2}, Ll9/b;->z0(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    const-string v5, "ttl"

    const-class v6, Ljava/lang/Long;

    invoke-static {p1, p0, v5, v6}, Ll9/b;->y0(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Integer;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v6

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v1, "doNotDisturbTime"

    sget-object v8, Lb9/b;->b:Ljava/util/List;

    invoke-static {p1, p0, v1, v8}, Ll9/b;->z0(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v8, "doNotDisturbTimeMin"

    invoke-static {p1, p0, v8, v2}, Ll9/b;->z0(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object p0, v1

    :goto_0
    new-instance v8, Landroidx/core/view/s;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v8, p1, v1}, Landroidx/core/view/s;-><init>(II)V

    new-instance v9, Landroidx/core/view/s;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v9, p1, v0}, Landroidx/core/view/s;-><init>(II)V

    new-instance v10, Landroidx/core/view/s;

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v10, p1, v0}, Landroidx/core/view/s;-><init>(II)V

    new-instance v11, Landroidx/core/view/s;

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v11, p0, p1}, Landroidx/core/view/s;-><init>(II)V

    new-instance p0, Lcom/samsung/android/sdk/smp/marketing/k;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v2, p0

    move-wide v4, v0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/sdk/smp/marketing/k;-><init>(Ljava/lang/String;JJLandroidx/core/view/s;Landroidx/core/view/s;Landroidx/core/view/s;Landroidx/core/view/s;)V

    return-object p0
.end method

.method public static w0(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/g;)V
    .locals 4

    :try_start_0
    iget-object v0, p1, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lv4/b;->L(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh9/a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ll9/b;->g0(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, p1, Lcom/samsung/android/sdk/smp/marketing/l;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/smp/marketing/m;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/smp/marketing/m;-><init>(I)V

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/smp/marketing/n;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/sdk/smp/marketing/m;

    invoke-direct {v1, v3}, Lcom/samsung/android/sdk/smp/marketing/m;-><init>(I)V

    :goto_0
    invoke-virtual {v1, p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/m;->R0(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/g;Lorg/json/JSONObject;)V

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/sdk/smp/marketing/m;->Q0(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/g;)V

    iput-boolean v3, p1, Lcom/samsung/android/sdk/smp/marketing/g;->F:Z

    return-void

    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    iget-object p1, p1, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid resource. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "b"

    invoke-static {v0, p1, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0
.end method

.method public static x0(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/util/Pair;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v2, "contentsType"

    invoke-virtual {v1, v2, v0}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "contents type policy: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "b"

    invoke-static {v3, v1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v4, -0x5f5e8754

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v4, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "type3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :pswitch_1
    const-string v1, "type2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v6

    goto :goto_1

    :pswitch_2
    const-string v1, "type1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "resolution"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_3

    const-string p0, "invalid contents type policy: "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    sget v0, Lfc/e;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_4

    const-string p0, "type2"

    goto :goto_2

    :cond_4
    const-string p0, "type1"

    :goto_2
    invoke-static {p1, p0}, Ll9/b;->f0(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    goto :goto_3

    :cond_5
    invoke-static {p1, v2}, Ll9/b;->f0(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_6
    invoke-static {p0}, Lfc/e;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "type1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type2"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-static {p1, v1}, Ll9/b;->f0(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    goto :goto_4

    :cond_8
    const-string v5, "type3"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {p1, v5}, Ll9/b;->f0(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    goto :goto_4

    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_a
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    invoke-static {p1, v3}, Ll9/b;->f0(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    :goto_4
    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :pswitch_data_0
    .packed-switch 0x69b5837
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static y0(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 3

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\p{Space}"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-class v2, Ljava/lang/Long;

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-virtual {p3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    const-string p1, "invalid "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "b"

    invoke-static {p2, p0, p1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0
.end method

.method public static z0(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, " not found. set to default"

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "b"

    invoke-static {p1, p0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3

    :cond_0
    const-class p3, Ljava/lang/Integer;

    invoke-static {p0, p1, p2, p3}, Ll9/b;->y0(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 0

    return-void
.end method

.method public A0(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/g;Lorg/json/JSONObject;)V
    .locals 20

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    const-string v3, "filter"

    const-string v4, "b"

    :try_start_0
    const-string v5, "st"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/sdk/smp/marketing/g;->d:Lorg/json/JSONObject;

    invoke-static {v1, v2}, Ll9/b;->v0(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/k;

    move-result-object v5

    const-string v6, "clearTime"

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-nez v6, :cond_0

    const-string v6, "replace clearTime to ttl end"

    invoke-static {v4, v2, v6}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v9, v5, Lcom/samsung/android/sdk/smp/marketing/k;->c:J

    :cond_0
    move-wide v14, v9

    const-string v6, "random"

    const/16 v7, 0x3c

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const-string v6, "cctime"

    const/4 v12, 0x0

    invoke-virtual {v1, v6, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v6, "screenOnTime"

    invoke-virtual {v1, v6, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v6, "feedbackDispersion"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v9, 0x2

    new-array v8, v9, [I

    const/4 v7, 0x1

    if-nez v6, :cond_1

    aput v7, v8, v12

    const/16 v6, 0xa

    aput v6, v8, v7

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ne v7, v9, :cond_d

    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    aput v7, v8, v12

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v8, v7

    :goto_0
    iget-object v6, v0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 p0, v2

    move v2, v7

    move-object v7, v5

    move-object/from16 v16, v8

    move v8, v13

    move v9, v10

    move/from16 v17, v10

    move/from16 v18, v11

    move-wide v10, v14

    move v2, v12

    move/from16 v12, v18

    move/from16 v19, v13

    move-object/from16 v13, v16

    :try_start_1
    invoke-static/range {v6 .. v13}, Ll9/b;->m0(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/k;IIJI[I)Z

    move-result v6

    if-eqz v6, :cond_c

    aget v6, v16, v2

    iput v6, v0, Lcom/samsung/android/sdk/smp/marketing/g;->x:I

    const/4 v6, 0x1

    aget v7, v16, v6

    iput v7, v0, Lcom/samsung/android/sdk/smp/marketing/g;->y:I

    iget-object v6, v5, Lcom/samsung/android/sdk/smp/marketing/k;->a:Ljava/lang/String;

    iput-object v6, v0, Lcom/samsung/android/sdk/smp/marketing/g;->e:Ljava/lang/String;

    iget-object v6, v5, Lcom/samsung/android/sdk/smp/marketing/k;->d:Landroidx/core/view/s;

    iget v7, v6, Landroidx/core/view/s;->b:I

    iput v7, v0, Lcom/samsung/android/sdk/smp/marketing/g;->f:I

    iget v6, v6, Landroidx/core/view/s;->c:I

    iput v6, v0, Lcom/samsung/android/sdk/smp/marketing/g;->h:I

    iget-object v6, v5, Lcom/samsung/android/sdk/smp/marketing/k;->e:Landroidx/core/view/s;

    iget v7, v6, Landroidx/core/view/s;->b:I

    iput v7, v0, Lcom/samsung/android/sdk/smp/marketing/g;->g:I

    iget v6, v6, Landroidx/core/view/s;->c:I

    iput v6, v0, Lcom/samsung/android/sdk/smp/marketing/g;->i:I

    iget-object v6, v5, Lcom/samsung/android/sdk/smp/marketing/k;->f:Landroidx/core/view/s;

    iget v7, v6, Landroidx/core/view/s;->b:I

    iput v7, v0, Lcom/samsung/android/sdk/smp/marketing/g;->m:I

    iget v6, v6, Landroidx/core/view/s;->c:I

    iput v6, v0, Lcom/samsung/android/sdk/smp/marketing/g;->o:I

    iget-object v6, v5, Lcom/samsung/android/sdk/smp/marketing/k;->g:Landroidx/core/view/s;

    iget v7, v6, Landroidx/core/view/s;->b:I

    iput v7, v0, Lcom/samsung/android/sdk/smp/marketing/g;->n:I

    iget v6, v6, Landroidx/core/view/s;->c:I

    iput v6, v0, Lcom/samsung/android/sdk/smp/marketing/g;->p:I

    iget-wide v6, v5, Lcom/samsung/android/sdk/smp/marketing/k;->b:J

    iput-wide v6, v0, Lcom/samsung/android/sdk/smp/marketing/g;->j:J

    iget-wide v5, v5, Lcom/samsung/android/sdk/smp/marketing/k;->c:J

    iput-wide v5, v0, Lcom/samsung/android/sdk/smp/marketing/g;->k:J

    iput-wide v14, v0, Lcom/samsung/android/sdk/smp/marketing/g;->l:J

    move/from16 v5, v19

    iput v5, v0, Lcom/samsung/android/sdk/smp/marketing/g;->q:I

    move/from16 v5, v17

    iput v5, v0, Lcom/samsung/android/sdk/smp/marketing/g;->r:I

    const-string v5, "pLink"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/samsung/android/sdk/smp/marketing/g;->z:Z

    invoke-static/range {p1 .. p1}, Lfc/e;->F(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    move/from16 v5, v18

    iput v5, v0, Lcom/samsung/android/sdk/smp/marketing/g;->s:I

    :cond_2
    const-string v5, "contents"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/sdk/smp/marketing/g;->t:Lorg/json/JSONObject;

    const-string v5, "chan"

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v5, 0x1

    if-eq v7, v5, :cond_3

    if-eq v7, v6, :cond_3

    const/4 v7, 0x1

    :cond_3
    iput v7, v0, Lcom/samsung/android/sdk/smp/marketing/g;->v:I

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Landroidx/activity/result/l;

    invoke-direct {v5}, Landroidx/activity/result/l;-><init>()V

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v7, "install"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "count"

    const-string v9, "pkg"

    if-eqz v7, :cond_4

    :try_start_2
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    iput-object v10, v5, Landroidx/activity/result/l;->c:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Landroidx/activity/result/l;->a:I

    :cond_4
    const-string v7, "notInstall"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    iput-object v7, v5, Landroidx/activity/result/l;->d:Ljava/lang/Object;

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v5, Landroidx/activity/result/l;->b:I

    :cond_5
    iget-object v3, v5, Landroidx/activity/result/l;->c:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONArray;

    iget v7, v5, Landroidx/activity/result/l;->a:I

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v3, v7, :cond_7

    if-gtz v7, :cond_6

    goto :goto_1

    :cond_6
    iget-object v3, v5, Landroidx/activity/result/l;->d:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONArray;

    iget v7, v5, Landroidx/activity/result/l;->b:I

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v3, v7, :cond_7

    if-gtz v7, :cond_8

    :cond_7
    :goto_1
    move v12, v2

    goto :goto_2

    :cond_8
    const/4 v12, 0x1

    :goto_2
    if-eqz v12, :cond_9

    iput-object v5, v0, Lcom/samsung/android/sdk/smp/marketing/g;->w:Landroidx/activity/result/l;

    goto :goto_3

    :cond_9
    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw v0

    :cond_a
    :goto_3
    const-string v3, "freq"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_b

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/sdk/smp/marketing/g;->A:I

    iput v1, v0, Lcom/samsung/android/sdk/smp/marketing/g;->B:I

    iput v1, v0, Lcom/samsung/android/sdk/smp/marketing/g;->C:I

    :goto_4
    iput v1, v0, Lcom/samsung/android/sdk/smp/marketing/g;->D:I

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_b
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v2, v0, Lcom/samsung/android/sdk/smp/marketing/g;->A:I

    iput v3, v0, Lcom/samsung/android/sdk/smp/marketing/g;->B:I

    iput v5, v0, Lcom/samsung/android/sdk/smp/marketing/g;->C:I

    goto :goto_4

    :goto_5
    return-void

    :cond_c
    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw v0

    :cond_d
    move-object/from16 p0, v2

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_1
    move-exception v0

    move-object/from16 p0, v2

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid userdata. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-static {v4, v1, v0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw v0
.end method

.method public abstract B()S
.end method

.method public C(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deserializer"

    invoke-static {p3, p1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ll9/b;->x(Lkotlinx/serialization/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public D()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ll9/b;->U()V

    const/4 p0, 0x0

    throw p0
.end method

.method public E()F
    .locals 0

    invoke-virtual {p0}, Ll9/b;->U()V

    const/4 p0, 0x0

    throw p0
.end method

.method public F()D
    .locals 0

    invoke-virtual {p0}, Ll9/b;->U()V

    const/4 p0, 0x0

    throw p0
.end method

.method public U()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " can\'t retrieve untyped values"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lkotlinx/serialization/descriptors/g;)Lzb/a;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Lkotlinx/serialization/descriptors/g;)V
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract d()J
.end method

.method public e(Lkotlinx/serialization/internal/c1;I)S
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll9/b;->B()S

    move-result p0

    return p0
.end method

.method public f(Lkotlinx/serialization/internal/c1;I)F
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll9/b;->E()F

    move-result p0

    return p0
.end method

.method public g()Z
    .locals 0

    invoke-virtual {p0}, Ll9/b;->U()V

    const/4 p0, 0x0

    throw p0
.end method

.method public h(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll9/b;->D()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract i0()V
.end method

.method public j(Lkotlinx/serialization/internal/c1;I)C
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll9/b;->k()C

    move-result p0

    return p0
.end method

.method public k()C
    .locals 0

    invoke-virtual {p0}, Ll9/b;->U()V

    const/4 p0, 0x0

    throw p0
.end method

.method public l(Lkotlinx/serialization/descriptors/g;)I
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll9/b;->U()V

    const/4 p0, 0x0

    throw p0
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o(Lkotlinx/serialization/descriptors/g;I)J
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll9/b;->d()J

    move-result-wide p0

    return-wide p0
.end method

.method public p(Lkotlinx/serialization/internal/c1;I)B
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll9/b;->z()B

    move-result p0

    return p0
.end method

.method public q(Lkotlinx/serialization/internal/c1;I)Z
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll9/b;->g()Z

    move-result p0

    return p0
.end method

.method public s(Lkotlinx/serialization/descriptors/g;)Lzb/c;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public t(Lkotlinx/serialization/internal/c1;I)Lzb/c;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lkotlinx/serialization/internal/o0;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll9/b;->s(Lkotlinx/serialization/descriptors/g;)Lzb/c;

    move-result-object p0

    return-object p0
.end method

.method public u(Lkotlinx/serialization/internal/c1;I)I
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll9/b;->w()I

    move-result p0

    return p0
.end method

.method public abstract w()I
.end method

.method public x(Lkotlinx/serialization/b;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lv9/a;->o(Lzb/c;Lkotlinx/serialization/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public y(Lkotlinx/serialization/internal/c1;I)D
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll9/b;->F()D

    move-result-wide p0

    return-wide p0
.end method

.method public abstract z()B
.end method
