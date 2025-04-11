.class public abstract Lcom/fasterxml/jackson/annotation/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/Boolean;

.field public static b:Ljava/lang/Boolean;

.field public static c:Ljava/lang/Boolean;

.field public static d:Ljava/lang/Boolean;

.field public static final e:La0/b;

.field public static final f:Lcom/google/gson/internal/e;

.field public static final g:[I

.field public static final h:[Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, La0/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La0/b;-><init>(I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/i0;->e:La0/b;

    new-instance v0, Lcom/google/gson/internal/e;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lcom/google/gson/internal/e;-><init>(I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/i0;->f:Lcom/google/gson/internal/e;

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/fasterxml/jackson/annotation/i0;->g:[I

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/fasterxml/jackson/annotation/i0;->h:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final B(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "method"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "GET"

    invoke-static {p0, v0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HEAD"

    invoke-static {p0, v0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static C(Landroid/content/Context;II)I
    .locals 1

    invoke-static {p0, p1}, Lp9/d;->h0(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p1, p0, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    iget p2, p0, Landroid/util/TypedValue;->data:I

    :cond_0
    return p2
.end method

.method public static D(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/animation/TimeInterpolator;
    .locals 6

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget p1, v0, Landroid/util/TypedValue;->type:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    iget-object p1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "cubic-bezier"

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/annotation/i0;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "path"

    if-nez v3, :cond_2

    invoke-static {p1, v5}, Lcom/fasterxml/jackson/annotation/i0;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/annotation/i0;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 v0, 0xd

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-static {v4, p0}, Lcom/fasterxml/jackson/annotation/i0;->r(I[Ljava/lang/String;)F

    move-result p1

    invoke-static {v2, p0}, Lcom/fasterxml/jackson/annotation/i0;->r(I[Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/fasterxml/jackson/annotation/i0;->r(I[Ljava/lang/String;)F

    move-result v1

    invoke-static {p2, p0}, Lcom/fasterxml/jackson/annotation/i0;->r(I[Ljava/lang/String;)F

    move-result p0

    invoke-static {p1, v0, v1, p0}, Ld0/a;->b(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {p1, v5}, Lcom/fasterxml/jackson/annotation/i0;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/fasterxml/jackson/annotation/i0;->m(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p0

    invoke-static {p0}, Ld0/a;->c(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid motion easing type: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static E(Landroid/view/View;Ll4/h;)V
    .locals 3

    iget-object v0, p1, Ll4/h;->a:Ll4/g;

    iget-object v0, v0, Ll4/g;->b:Le4/a;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Le4/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    :goto_1
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Landroidx/core/view/o0;->i(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p1, Ll4/h;->a:Ll4/g;

    iget v1, p0, Ll4/g;->m:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    iput v0, p0, Ll4/g;->m:F

    invoke-virtual {p1}, Ll4/h;->n()V

    :cond_2
    return-void
.end method

.method public static F(Landroid/os/Parcel;IZ)V
    .locals 1

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static G(Landroid/os/Parcel;ILandroid/os/Bundle;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static H(Landroid/os/Parcel;ILandroid/os/IBinder;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static I(Landroid/os/Parcel;II)V
    .locals 1

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static J(Landroid/os/Parcel;IJ)V
    .locals 1

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public static K(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result p1

    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static L(Landroid/os/Parcel;ILjava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static M(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result p1

    array-length v0, p2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    if-nez v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-static {p0, v3, p3}, Lcom/fasterxml/jackson/annotation/i0;->R(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static N(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    if-nez v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-static {p0, v3, v1}, Lcom/fasterxml/jackson/annotation/i0;->R(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static O(Landroid/os/Parcel;I)I
    .locals 1

    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0
.end method

.method public static synthetic P(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method public static Q(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/lit8 v1, p1, -0x4

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static R(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p1, v1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4

    const-string v0, "protocols"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lokhttp3/Protocol;

    sget-object v3, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lkotlin/collections/o;->P0(ILjava/lang/Iterable;)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Protocol;

    invoke-virtual {v1}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method public static b(II[I)I
    .locals 3

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p0, :cond_2

    add-int v1, v0, p0

    ushr-int/lit8 v1, v1, 0x1

    aget v2, p2, v1

    if-ge v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    if-le v2, p1, :cond_1

    add-int/lit8 v1, v1, -0x1

    move p0, v1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method

.method public static c([JIJ)I
    .locals 4

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_2

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    aget-wide v2, p0, v1

    cmp-long v2, v2, p2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    move p1, v1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method

.method public static d([Lw/f;[Lw/f;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    iget-char v3, v2, Lw/f;->a:C

    aget-object v4, p1, v1

    iget-char v5, v4, Lw/f;->a:C

    if-ne v3, v5, :cond_3

    iget-object v2, v2, Lw/f;->b:[F

    array-length v2, v2

    iget-object v3, v4, Lw/f;->b:[F

    array-length v3, v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v0
.end method

.method public static f(Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/d0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/u0;Z)I
    .locals 0

    invoke-virtual {p4}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j1;->b()I

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    invoke-static {p2}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result p0

    invoke-static {p3}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/d0;->b(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/d0;->d(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p0, p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/d0;->i()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/d0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/u0;ZZ)I
    .locals 3

    invoke-virtual {p4}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j1;->b()I

    move-result p4

    if-eqz p4, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result p4

    invoke-static {p3}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v1

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-static {p2}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v1

    invoke-static {p3}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz p6, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j1;->b()I

    move-result p0

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    if-nez p5, :cond_2

    return p0

    :cond_2
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/d0;->b(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/d0;->d(Landroid/view/View;)I

    move-result p5

    sub-int/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-static {p2}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result p5

    invoke-static {p3}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    int-to-float p4, p4

    int-to-float p3, p3

    div-float/2addr p4, p3

    int-to-float p0, p0

    mul-float/2addr p0, p4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/d0;->h()I

    move-result p3

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/d0;->d(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static h(Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/d0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/u0;Z)I
    .locals 0

    invoke-virtual {p4}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j1;->b()I

    move-result p4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j1;->b()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/d0;->b(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/d0;->d(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p4, p1

    invoke-static {p2}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result p1

    invoke-static {p3}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-float p2, p4

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j1;->b()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/util/List;)[B
    .locals 3

    const-string v0, "protocols"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkc/e;

    invoke-direct {v0}, Lkc/e;-><init>()V

    invoke-static {p0}, Lcom/fasterxml/jackson/annotation/i0;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lkc/e;->h0(I)V

    invoke-virtual {v0, v1}, Lkc/e;->C0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkc/e;->E()[B

    move-result-object p0

    return-object p0
.end method

.method public static j([FI)[F
    .locals 2

    if-ltz p1, :cond_1

    array-length v0, p0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    sub-int/2addr p1, v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array p1, p1, [F

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static k(I)Lfc/c;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    new-instance p0, Ll4/j;

    invoke-direct {p0}, Ll4/j;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Ll4/d;

    invoke-direct {p0}, Ll4/d;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Ll4/j;

    invoke-direct {p0}, Ll4/j;-><init>()V

    return-object p0
.end method

.method public static l(Ljava/lang/String;)[Lw/f;
    .locals 17

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v3

    move v3, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_10

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x45

    const/16 v7, 0x65

    if-ge v4, v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v8, v5, -0x41

    add-int/lit8 v9, v5, -0x5a

    mul-int/2addr v9, v8

    if-lez v9, :cond_1

    add-int/lit8 v8, v5, -0x61

    add-int/lit8 v9, v5, -0x7a

    mul-int/2addr v9, v8

    if-gtz v9, :cond_2

    :cond_1
    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_f

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x7a

    if-eq v5, v8, :cond_e

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x5a

    if-ne v5, v8, :cond_4

    goto/16 :goto_a

    :cond_4
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    new-array v5, v5, [F

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    move v10, v9

    move v9, v3

    :goto_3
    if-ge v10, v8, :cond_d

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v10

    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_a

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v7, 0x20

    if-eq v15, v7, :cond_7

    const/16 v7, 0x65

    if-eq v15, v6, :cond_6

    if-eq v15, v7, :cond_6

    packed-switch v15, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    if-nez v12, :cond_5

    const/4 v12, 0x1

    goto :goto_6

    :pswitch_1
    if-eq v14, v10, :cond_8

    if-nez v13, :cond_8

    :cond_5
    const/4 v11, 0x1

    goto :goto_5

    :cond_6
    const/4 v13, 0x1

    goto :goto_7

    :cond_7
    const/16 v7, 0x65

    :goto_5
    :pswitch_2
    const/4 v9, 0x1

    :cond_8
    :goto_6
    const/4 v13, 0x0

    :goto_7
    if-eqz v9, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_a
    :goto_8
    if-ge v10, v14, :cond_b

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v2, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    aput v10, v5, v3

    move v3, v9

    :cond_b
    if-eqz v11, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v14, v14, 0x1

    :goto_9
    move v10, v14

    const/4 v9, 0x0

    goto :goto_3

    :cond_d
    invoke-static {v5, v3}, Lcom/fasterxml/jackson/annotation/i0;->j([FI)[F

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    move/from16 v16, v5

    move-object v5, v3

    move/from16 v3, v16

    goto :goto_b

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "error in parsing \""

    const-string v4, "\""

    invoke-static {v3, v2, v4}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_e
    :goto_a
    new-array v5, v3, [F

    :goto_b
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    new-instance v3, Lw/f;

    invoke-direct {v3, v2, v5}, Lw/f;-><init>(C[F)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v2, v4, 0x1

    const/4 v3, 0x0

    move/from16 v16, v4

    move v4, v2

    move/from16 v2, v16

    goto/16 :goto_0

    :cond_10
    sub-int/2addr v4, v2

    const/4 v3, 0x1

    if-ne v4, v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_11

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    new-array v2, v2, [F

    new-instance v3, Lw/f;

    invoke-direct {v3, v0, v2}, Lw/f;-><init>(C[F)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lw/f;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw/f;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static m(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-static {p0}, Lcom/fasterxml/jackson/annotation/i0;->l(Ljava/lang/String;)[Lw/f;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1, v0}, Lw/f;->b([Lw/f;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error in parsing "

    invoke-static {v2, p0}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static n(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/fasterxml/jackson/annotation/i0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static o([Lw/f;)[Lw/f;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lw/f;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    new-instance v2, Lw/f;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lw/f;-><init>(Lw/f;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    invoke-static {p0}, Lcom/fasterxml/jackson/annotation/i0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static q(Landroid/content/Context;Landroidx/appcompat/widget/u;)Ld/m;
    .locals 20

    move-object/from16 v0, p1

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v0, Landroidx/appcompat/widget/u;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-eqz v4, :cond_11

    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroidx/appcompat/widget/u;->d:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v3, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x40

    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v1

    move v8, v7

    :goto_0
    if-ge v8, v5, :cond_0

    aget-object v9, v1, v8

    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/annotation/i0;->e:La0/b;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v5, v0, Landroidx/appcompat/widget/u;->f:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    iget v5, v0, Landroidx/appcompat/widget/u;->b:I

    invoke-static {v2, v5}, Lh3/a;->K(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v5

    :goto_1
    move v2, v7

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ge v2, v8, :cond_6

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v11, v12, :cond_2

    goto :goto_4

    :cond_2
    move v11, v7

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_4

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-nez v12, :cond_3

    :goto_4
    move v8, v7

    goto :goto_5

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    move v8, v9

    :goto_5
    if-eqz v8, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move-object v4, v10

    :goto_6
    if-nez v4, :cond_7

    new-instance v0, Ld/m;

    invoke-direct {v0, v9, v10}, Ld/m;-><init>(I[La0/h;)V

    return-object v0

    :cond_7
    iget-object v1, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    :try_start_0
    const-string v13, "_id"

    const-string v14, "file_id"

    const-string v15, "font_ttc_index"

    const-string v16, "font_variation_settings"

    const-string v17, "font_weight"

    const-string v18, "font_italic"

    const-string v19, "result_code"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "query = ?"

    new-array v4, v9, [Ljava/lang/String;

    iget-object v0, v0, Landroidx/appcompat/widget/u;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v7

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, v11

    invoke-static/range {v0 .. v6}, La0/c;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_d

    const-string v0, "result_code"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "file_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "font_ttc_index"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "font_weight"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "font_italic"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    :goto_7
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, -0x1

    if-eq v0, v6, :cond_8

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v19, v13

    goto :goto_8

    :cond_8
    move/from16 v19, v7

    :goto_8
    if-eq v3, v6, :cond_9

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v16, v13

    goto :goto_9

    :cond_9
    move/from16 v16, v7

    :goto_9
    if-ne v2, v6, :cond_a

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v11, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    goto :goto_a

    :cond_a
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    :goto_a
    move-object v15, v13

    if-eq v4, v6, :cond_b

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    goto :goto_b

    :cond_b
    const/16 v13, 0x190

    :goto_b
    move/from16 v17, v13

    if-eq v5, v6, :cond_c

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v9, :cond_c

    move/from16 v18, v9

    goto :goto_c

    :cond_c
    move/from16 v18, v7

    :goto_c
    new-instance v6, La0/h;

    move-object v14, v6

    invoke-direct/range {v14 .. v19}, La0/h;-><init>(Landroid/net/Uri;IIZI)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :cond_d
    if-eqz v10, :cond_e

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_e
    new-array v0, v7, [La0/h;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La0/h;

    new-instance v1, Ld/m;

    invoke-direct {v1, v7, v0}, Ld/m;-><init>(I[La0/h;)V

    return-object v1

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_f

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v0

    :cond_10
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found content provider "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but package was not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v1, "No package found for authority: "

    invoke-static {v1, v3}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static r(I[Ljava/lang/String;)F
    .locals 2

    aget-object p0, p1, p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    if-ltz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p0, p1

    if-gtz p1, :cond_0

    return p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Motion easing control point value must be between 0 and 1; instead got: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "TRuntime."

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t(Landroid/content/Context;Lp9/c;)V
    .locals 8

    if-eqz p0, :cond_35

    invoke-static {}, Lfc/e;->G()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "i0"

    const-string p1, "The current country code is not supported on this sdk. should check the sdk that you are importing."

    invoke-static {p0, p1}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "deactivate_smp"

    invoke-virtual {v0, v1}, Le9/b;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    monitor-exit v0

    if-eqz v1, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->DEACTIVATE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    iget-object v1, p1, Lp9/c;->a:Lp9/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "i0"

    const-string p1, "handleCommonAction. smp is deactivated. do nothing"

    invoke-static {p0, p1}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "i0"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handle action. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lp9/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lp9/a;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lp9/c;->a:Lp9/b;

    move-object v1, p1

    check-cast v1, Lp9/a;

    iget-object v1, v1, Lp9/a;->d:Ljava/lang/String;

    iget-object p1, p1, Lp9/c;->b:Landroid/os/Bundle;

    const-string v2, "handleAction error. invalid action : "

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "i0"

    if-eqz v3, :cond_2

    const-string p0, "handleAction error. mid is empty"

    invoke-static {v4, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_2
    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v3

    if-nez v3, :cond_3

    const-string p0, "handleAction error. dbHandler is null"

    invoke-static {v4, v1, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_3
    :try_start_1
    invoke-virtual {v3, v1}, Lc9/b;->F(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->CANCELED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string p1, "already canceled. ignore this event"

    invoke-static {v4, v1, p1}, Lj3/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v6, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {p0, v1, p1, v5}, Lcom/fasterxml/jackson/annotation/i0;->u(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)V

    goto :goto_0

    :cond_5
    sget-object v5, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CLEAR:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/smp/marketing/j;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/g;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/marketing/g;->e(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    sget-object v5, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v0, "custom_feedback"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p0, v1, v0, p1}, Lcom/samsung/android/sdk/smp/marketing/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    sget-object v5, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->SCREEN_ON:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {p0, v1, p1}, Lcom/fasterxml/jackson/annotation/i0;->v(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_8
    sget-object p1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CHECK_NOTIFICATION_CLEARED:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/smp/marketing/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v1, p1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DisplayErrorDueToDoNotDisturbTimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {p1, p0, v1}, Lcom/samsung/android/sdk/smp/marketing/j;->j(Ljava/lang/Exception;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    :goto_0
    invoke-virtual {v3}, Lc9/b;->c()V

    goto/16 :goto_e

    :goto_1
    invoke-virtual {v3}, Lc9/b;->c()V

    throw p0

    :cond_b
    iget-object v0, p1, Lp9/c;->a:Lp9/b;

    iget-object p1, p1, Lp9/c;->b:Landroid/os/Bundle;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->INITIALIZE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_24

    sget p1, Ll9/b;->a:I

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->g(Landroid/content/Context;)V

    invoke-static {}, Lf9/a;->b()Lf9/a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v0

    iget-object v1, p1, Lf9/a;->d:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {p1, p0}, Lf9/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    monitor-enter v0

    :try_start_3
    const-string v5, "aid"

    invoke-virtual {v0, v5, v1}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_c
    :goto_2
    iget-object v1, p1, Lf9/a;->f:Ljava/io/Serializable;

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    if-eqz v5, :cond_f

    check-cast v1, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    if-nez v1, :cond_d

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    const-string v5, "opt_in_policy"

    sget-object v6, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;->DEVICE_BASED:Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;->fromString(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v1

    iput-object v5, p1, Lf9/a;->f:Ljava/io/Serializable;

    goto :goto_3

    :catchall_2
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_d
    :goto_3
    iget-object v1, p1, Lf9/a;->f:Ljava/io/Serializable;

    check-cast v1, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    monitor-enter v0

    if-nez v1, :cond_e

    :try_start_5
    sget-object v1, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;->DEVICE_BASED:Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    :cond_e
    const-string v5, "opt_in_policy"

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v0

    goto :goto_4

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_f
    :goto_4
    iget-object v1, p1, Lf9/a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {p1, p0}, Lf9/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    monitor-enter v0

    :try_start_6
    const-string v5, "spp_app_id"

    invoke-virtual {v0, v5, v1}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    monitor-exit v0

    goto :goto_5

    :catchall_4
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_10
    :goto_5
    iget-object v1, p1, Lf9/a;->g:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    if-eqz v1, :cond_11

    monitor-enter v0

    :try_start_7
    const-string v5, "push_mode"

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    monitor-exit v0

    goto :goto_6

    :catchall_5
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_11
    :goto_6
    invoke-static {p0}, Lg9/b;->G(Landroid/content/Context;)Lg9/b;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    const-string v1, "is_data_cleared"

    invoke-virtual {v0, v1, v2}, Le9/b;->r(Ljava/lang/String;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    monitor-exit v0

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v0

    const-string v1, "b"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ptype:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lf9/c;->J()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lf9/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll9/b;->C0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lf9/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v1, v5, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move p1, v4

    goto :goto_7

    :cond_13
    move p1, v2

    :goto_7
    if-nez p1, :cond_14

    const-string p0, "b"

    const-string p1, "init but not on main process. do nothing."

    invoke-static {p0, p1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_14
    invoke-static {}, Lm9/a;->T()Lm9/a;

    move-result-object p1

    monitor-enter p1

    :try_start_9
    invoke-static {}, Lfc/e;->t()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_8

    :cond_15
    invoke-static {}, Lf9/a;->b()Lf9/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf9/a;->c(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    move-result-object v0

    invoke-static {}, Li4/f;->B()Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;->SPP_ONLY_MODE:Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    if-ne v0, v1, :cond_16

    :goto_8
    move v0, v2

    goto :goto_9

    :cond_16
    invoke-static {}, Lfc/e;->w()Z

    move-result v0

    xor-int/2addr v0, v4

    :goto_9
    if-eqz v0, :cond_17

    invoke-static {}, Lh9/a;->r()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :cond_17
    monitor-exit p1

    invoke-static {p0}, Lm9/a;->W(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p0}, Ll9/b;->r0(Landroid/content/Context;)V

    monitor-enter p1

    :try_start_a
    invoke-static {p0}, Li4/f;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "spp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0}, Li4/g;->u(Landroid/content/Context;)V

    goto :goto_a

    :cond_18
    invoke-static {p0}, Lh9/a;->E(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :goto_a
    monitor-exit p1

    goto/16 :goto_e

    :catchall_6
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_19
    invoke-static {}, Lfc/e;->t()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lh9/a;->f(Landroid/content/Context;)V

    goto/16 :goto_e

    :cond_1a
    :try_start_b
    invoke-virtual {p1, p0}, Li4/f;->R(Landroid/content/Context;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-eqz p1, :cond_1c

    invoke-static {p0}, Lg9/b;->G(Landroid/content/Context;)Lg9/b;

    move-result-object p1

    invoke-virtual {p1}, Lg9/b;->F()I

    move-result p1

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/j;->n(Landroid/content/Context;)J

    move-result-wide v0

    int-to-long v4, p1

    cmp-long p1, v0, v4

    if-lez p1, :cond_1b

    new-instance p1, Lp9/c;

    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_INCOMP_MARKETING_REQUESTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {p1, v0, v3}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lv4/b;->D(Landroid/content/Context;Lp9/c;)V

    :cond_1b
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/c;->b(Landroid/content/Context;)I

    move-result p1

    if-lez p1, :cond_34

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Lp9/c;

    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_EXTERNAL_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {p1, v0, v3}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lv4/b;->D(Landroid/content/Context;Lp9/c;)V

    goto/16 :goto_e

    :cond_1c
    :try_start_c
    invoke-static {p0}, Lfc/e;->B(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1d

    invoke-static {p0}, Ll9/b;->O0(Landroid/content/Context;)V

    goto :goto_b

    :cond_1d
    invoke-static {p0, v2}, Lh9/a;->e(Landroid/content/Context;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :goto_b
    invoke-static {p0}, Lg9/b;->G(Landroid/content/Context;)Lg9/b;

    move-result-object p1

    invoke-virtual {p1}, Lg9/b;->F()I

    move-result p1

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/j;->n(Landroid/content/Context;)J

    move-result-wide v0

    int-to-long v5, p1

    cmp-long p1, v0, v5

    if-lez p1, :cond_1e

    new-instance p1, Lp9/c;

    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_INCOMP_MARKETING_REQUESTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {p1, v0, v3}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lv4/b;->D(Landroid/content/Context;Lp9/c;)V

    :cond_1e
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/c;->b(Landroid/content/Context;)I

    move-result p1

    if-lez p1, :cond_1f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lp9/c;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_EXTERNAL_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v0, v1, v3}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    invoke-static {p1, v0}, Lv4/b;->D(Landroid/content/Context;Lp9/c;)V

    :cond_1f
    sget p1, Lj3/f;->n:I

    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object p1

    if-nez p1, :cond_20

    const-string p1, "f"

    const-string v0, "hasAckDataToSend fail. dbHandler null"

    invoke-static {p1, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_20
    monitor-enter p1

    :try_start_d
    const-string v0, "ack"

    const-string v1, "getAckCount"

    invoke-virtual {p1, v0, v1}, Lc9/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    monitor-exit p1

    invoke-virtual {p1}, Lc9/b;->c()V

    if-lez v0, :cond_21

    move v2, v4

    :cond_21
    :goto_c
    if-eqz v2, :cond_34

    invoke-static {p0}, Lj3/f;->d(Landroid/content/Context;)V

    goto/16 :goto_e

    :catchall_7
    move-exception p0

    monitor-exit p1

    throw p0

    :catchall_8
    move-exception p1

    invoke-static {p0}, Lg9/b;->G(Landroid/content/Context;)Lg9/b;

    move-result-object v0

    invoke-virtual {v0}, Lg9/b;->F()I

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/j;->n(Landroid/content/Context;)J

    move-result-wide v1

    int-to-long v4, v0

    cmp-long v0, v1, v4

    if-lez v0, :cond_22

    new-instance v0, Lp9/c;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_INCOMP_MARKETING_REQUESTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v0, v1, v3}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lv4/b;->D(Landroid/content/Context;Lp9/c;)V

    :cond_22
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/c;->b(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_23

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lp9/c;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_EXTERNAL_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v0, v1, v3}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lv4/b;->D(Landroid/content/Context;Lp9/c;)V

    :cond_23
    throw p1

    :catchall_9
    move-exception p0

    monitor-exit p1

    throw p0

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_24
    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_CLIENTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {p0}, Lva/n;->I(Landroid/content/Context;)V

    goto/16 :goto_e

    :cond_25
    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->SEND_ACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {p0}, Lj3/f;->v(Landroid/content/Context;)V

    goto/16 :goto_e

    :cond_26
    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_INCOMP_MARKETING_REQUESTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/j;->e(Landroid/content/Context;)V

    goto/16 :goto_e

    :cond_27
    sget-object v5, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->SAVE_APP_USAGE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    if-eqz p1, :cond_34

    invoke-static {p0, p1}, Li9/f;->c(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_e

    :cond_28
    sget-object v5, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->GDPR:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    if-eqz p1, :cond_34

    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/sdk/smp/gdpr/GDPRManager$GDPRRequestType;->GET:Lcom/samsung/android/sdk/smp/gdpr/GDPRManager$GDPRRequestType;

    invoke-static {p0, p1, v0}, Lkotlin/jvm/internal/m;->q(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/gdpr/GDPRManager$GDPRRequestType;)V

    goto/16 :goto_e

    :cond_29
    sget-object p1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_APP_UPDATE_EVENT:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    sget-object p1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_BOOT_COMPLETED_EVENT:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto/16 :goto_d

    :cond_2a
    sget-object p1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->DEACTIVATE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-static {p0}, Lva/n;->n(Landroid/content/Context;)V

    goto/16 :goto_e

    :cond_2b
    sget-object p1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->FCM_SERVICE_COMPLEMENTARY_EVENT:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-static {p0}, Lg9/b;->G(Landroid/content/Context;)Lg9/b;

    move-result-object v0

    invoke-virtual {v0}, Lg9/b;->F()I

    move-result v0

    if-lez v0, :cond_2d

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v0

    invoke-virtual {v0}, Lf9/c;->F()I

    move-result v1

    const-string v5, "i0"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FcmService complementary retry count : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    if-ge v1, v5, :cond_2c

    add-int/2addr v1, v4

    monitor-enter v0

    :try_start_e
    const-string v4, "fcm_service_retry_count"

    invoke-virtual {v0, v1, v4}, Le9/b;->t(ILjava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    monitor-exit v0

    new-instance v0, Lp9/c;

    invoke-direct {v0, p1, v3}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lb9/a;->i:J

    add-long/2addr v3, v5

    invoke-static {p0, v0, v3, v4, v2}, Lv4/b;->V(Landroid/content/Context;Lp9/c;JI)V

    goto/16 :goto_e

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2c
    const-string p0, "i0"

    const-string p1, "over FcmService complementary retry count"

    invoke-static {p0, p1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_2d
    new-instance p1, Lp9/c;

    invoke-direct {p1, v1, v3}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lv4/b;->D(Landroid/content/Context;Lp9/c;)V

    goto :goto_e

    :cond_2e
    sget-object p1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_EXTERNAL_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/c;->e(Landroid/content/Context;)V

    goto :goto_e

    :cond_2f
    const-string p0, "i0"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "handleCommonAction. invalid action : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_30
    :goto_d
    sget-boolean p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->n:Z

    if-nez p1, :cond_31

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->g(Landroid/content/Context;)V

    :cond_31
    sget-object p1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_BOOT_COMPLETED_EVENT:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {}, Lm9/a;->T()Lm9/a;

    move-result-object v0

    invoke-virtual {v0}, Li4/f;->y()V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/j;->i(Landroid/content/Context;Z)V

    invoke-static {p0}, Lva/n;->y(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-static {}, Lfc/e;->t()Z

    move-result p1

    if-eqz p1, :cond_32

    const-string p0, "n"

    const-string p1, "do not proceed upload clients request. spp force activation mode"

    invoke-static {p0, p1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_32
    invoke-static {p0}, Lva/n;->o(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-ltz p1, :cond_33

    invoke-static {p0, v4}, Lva/n;->Q(Landroid/content/Context;Z)V

    goto :goto_e

    :cond_33
    invoke-static {p0, v0, v1}, Lva/n;->N(Landroid/content/Context;J)V

    :cond_34
    :goto_e
    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_35
    const-string p0, "i0"

    const-string p1, "handle. context or task is null"

    invoke-static {p0, p1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)V
    .locals 11

    if-nez p2, :cond_0

    const-string p0, "i0"

    const-string p2, "handleMarketingBasicAction error. data is null"

    invoke-static {p0, p1, p2}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "marketing_sub_action"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v1, v4

    goto :goto_1

    :sswitch_0
    const-string v1, "display"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "deliver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "get_marketing_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v6

    goto :goto_1

    :sswitch_3
    const-string v1, "download_res"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v5

    :goto_1
    packed-switch v1, :pswitch_data_0

    move v1, v5

    goto :goto_3

    :pswitch_0
    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    goto :goto_2

    :pswitch_1
    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    goto :goto_2

    :pswitch_2
    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    :goto_2
    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    if-nez v1, :cond_5

    const-string p0, "i0"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invalid state:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p3

    sparse-switch p3, :sswitch_data_1

    :goto_4
    move v2, v4

    goto :goto_5

    :sswitch_4
    const-string p3, "display"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_4

    :sswitch_5
    const-string p3, "deliver"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    goto :goto_5

    :sswitch_6
    const-string p3, "get_marketing_status"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_4

    :cond_7
    move v2, v6

    goto :goto_5

    :sswitch_7
    const-string p3, "download_res"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    goto :goto_4

    :cond_8
    move v2, v5

    :cond_9
    :goto_5
    packed-switch v2, :pswitch_data_1

    goto :goto_7

    :pswitch_3
    const-string p3, "is_first_display"

    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/j;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/g;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Lcom/samsung/android/sdk/smp/marketing/g;->f(Landroid/content/Context;Z)V

    goto :goto_7

    :pswitch_4
    const-string p3, "msg_type"

    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "userdata"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "display_id"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :try_start_0
    invoke-static {p0, p1, p3, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/j;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/g;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/samsung/android/sdk/smp/marketing/g;->t(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DisplayErrorDueToDoNotDisturbTimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p3

    invoke-static {p3, p0, p1}, Lcom/samsung/android/sdk/smp/marketing/j;->j(Ljava/lang/Exception;Landroid/content/Context;Ljava/lang/String;)V

    :goto_6
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/j;->c(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/j;->d(Landroid/content/Context;)V

    goto :goto_7

    :pswitch_5
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/j;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/g;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/samsung/android/sdk/smp/marketing/g;->u(Landroid/content/Context;)V

    goto :goto_7

    :pswitch_6
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/j;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/g;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/samsung/android/sdk/smp/marketing/g;->t(Landroid/content/Context;)V

    :goto_7
    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p3

    monitor-enter p3

    :try_start_1
    const-string v0, "debugJob"

    invoke-virtual {p3, v0}, Le9/b;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p3

    if-eqz v0, :cond_15

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_a

    goto/16 :goto_11

    :cond_a
    const-string p3, "marketing_sub_action"

    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    :goto_8
    move v3, v4

    goto :goto_9

    :sswitch_8
    const-string v0, "display"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_d

    goto :goto_8

    :sswitch_9
    const-string v0, "deliver"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    goto :goto_8

    :cond_b
    move v3, v6

    goto :goto_9

    :sswitch_a
    const-string v0, "get_marketing_status"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_c

    goto :goto_8

    :cond_c
    move v3, v5

    :cond_d
    :goto_9
    packed-switch v3, :pswitch_data_2

    const-string p3, ""

    goto :goto_a

    :pswitch_7
    const-string p3, "006"

    goto :goto_a

    :pswitch_8
    const-string p3, "002"

    goto :goto_a

    :pswitch_9
    const-string p3, "004"

    :goto_a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_11

    :cond_e
    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    if-nez v0, :cond_f

    goto/16 :goto_11

    :cond_f
    monitor-enter v0

    :try_start_2
    const-string v1, "get debug action error."

    const-string v2, "feedback"

    const-string v3, "debugaction"

    invoke-virtual {v0, v2, v3, p1, v1}, Lc9/b;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p3, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_10

    goto :goto_b

    :cond_10
    move v1, v5

    goto :goto_c

    :cond_11
    :goto_b
    move v1, v6

    :goto_c
    if-eqz v1, :cond_14

    const-string v1, "job_execute_time"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long p2, v7, v2

    if-gtz p2, :cond_12

    const-wide/16 v7, -0x1

    goto :goto_d

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    cmp-long p2, v9, v2

    if-gez p2, :cond_13

    move-wide v7, v2

    goto :goto_d

    :cond_13
    sget-wide v7, Lb9/a;->b:J

    div-long/2addr v9, v7

    const-wide/16 v7, 0x270f

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :goto_d
    cmp-long p2, v7, v2

    if-ltz p2, :cond_14

    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_DEBUG:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%04d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Li4/g;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lcom/samsung/android/sdk/smp/marketing/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    const-string p0, "error while handling debug action. "

    monitor-enter v0

    :try_start_3
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "debugaction"

    invoke-virtual {p2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, v0, Lc9/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "feedback"

    const-string v2, "mid = ?"

    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-virtual {p3, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_e

    :catchall_0
    move-exception p0

    goto :goto_f

    :catch_1
    move-exception p1

    :try_start_4
    const-string p2, "b"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_e
    monitor-exit v0

    goto :goto_10

    :goto_f
    monitor-exit v0

    throw p0

    :cond_14
    :goto_10
    invoke-virtual {v0}, Lc9/b;->c()V

    goto :goto_11

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_15
    :goto_11
    return-void

    :catchall_2
    move-exception p0

    monitor-exit p3

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42202c69 -> :sswitch_3
        0x545515f4 -> :sswitch_2
        0x5c6c0925 -> :sswitch_1
        0x63a518c2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x42202c69 -> :sswitch_7
        0x545515f4 -> :sswitch_6
        0x5c6c0925 -> :sswitch_5
        0x63a518c2 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x545515f4 -> :sswitch_a
        0x5c6c0925 -> :sswitch_9
        0x63a518c2 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12

    if-nez p2, :cond_0

    const-string p0, "i0"

    const-string p2, "handleScreenOn error. data is null"

    invoke-static {p0, p1, p2}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "marketing_sub_action"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "screen_on_fired"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_7

    const-string v1, "listening_start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v4, Landroidx/core/view/s;

    const-string v0, "display_start_hour"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "display_start_min"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v4, v0, v1}, Landroidx/core/view/s;-><init>(II)V

    new-instance v5, Landroidx/core/view/s;

    const-string v0, "display_end_hour"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "display_end_min"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v5, v0, v1}, Landroidx/core/view/s;-><init>(II)V

    new-instance v6, Landroidx/core/view/s;

    const-string v0, "display_start_hour"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "display_start_min"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v6, v0, v1}, Landroidx/core/view/s;-><init>(II)V

    new-instance v7, Landroidx/core/view/s;

    const-string v0, "display_start_hour"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "display_start_min"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v7, v0, v1}, Landroidx/core/view/s;-><init>(II)V

    const-string v0, "screen_on_end_time"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sget-object p2, Lo9/b;->c:Lo9/b;

    const-class p2, Lo9/b;

    monitor-enter p2

    :try_start_0
    sget-object v0, Lo9/b;->c:Lo9/b;

    if-nez v0, :cond_2

    new-instance v0, Lo9/b;

    invoke-direct {v0}, Lo9/b;-><init>()V

    sput-object v0, Lo9/b;->c:Lo9/b;

    :cond_2
    sget-object v0, Lo9/b;->c:Lo9/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p2

    monitor-enter v0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long p2, v8, v10

    if-gez p2, :cond_3

    const-string p0, "b"

    const-string p2, "already screen on end time. skip screen on listening"

    invoke-static {p0, p1, p2}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    sget p2, Lfc/e;->a:I

    if-eqz p0, :cond_4

    const-string p2, "power"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p2

    goto :goto_0

    :cond_4
    move p2, v2

    :goto_0
    if-eqz p2, :cond_5

    invoke-static {v4, v5, v6, v7}, Lo9/b;->a(Landroidx/core/view/s;Landroidx/core/view/s;Landroidx/core/view/s;Landroidx/core/view/s;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "b"

    const-string v1, "already screen on. create screen on event"

    invoke-static {p2, p1, v1}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "marketing_sub_action"

    const-string v2, "screen_on_fired"

    invoke-virtual {p2, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lp9/a;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->SCREEN_ON:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v1, v2, p2, p1}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lv4/b;->D(Landroid/content/Context;Lp9/c;)V

    goto :goto_1

    :cond_5
    const-string p2, "b"

    const-string v1, "start checking screen on event"

    invoke-static {p2, p1, v1}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, v0, Lo9/b;->a:Ljava/util/HashMap;

    new-instance v1, Lo9/a;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lo9/a;-><init>(Landroidx/core/view/s;Landroidx/core/view/s;Landroidx/core/view/s;Landroidx/core/view/s;J)V

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v0, Lo9/b;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-le p1, v2, :cond_6

    goto :goto_1

    :cond_6
    const-string p1, "b"

    const-string p2, "register screenOnReceiver"

    invoke-static {p1, p2}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iget-object p2, v0, Lo9/b;->b:Ld/f0;

    const/4 v1, 0x2

    invoke-virtual {p0, p2, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit p2

    throw p0

    :cond_7
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/j;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/g;

    move-result-object p1

    const-string p2, "force display"

    const-string v0, "g"

    iget-object v1, p1, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, p0, v3, v4}, Lcom/samsung/android/sdk/smp/marketing/g;->y(Landroid/content/Context;J)V

    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2, v1}, Lc9/b;->F(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v1

    invoke-virtual {p2}, Lc9/b;->c()V

    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/marketing/g;->u(Landroid/content/Context;)V

    goto :goto_2

    :cond_8
    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1, p0, v2}, Lcom/samsung/android/sdk/smp/marketing/g;->f(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "forceDisplay. state not supported : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_a
    const-string p0, "forceDisplay. db open fail"

    invoke-static {v0, v1, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;-><init>()V

    throw p0
.end method

.method public static w()Z
    .locals 2

    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dalvik"

    invoke-static {v1, v0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static y()Z
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "com.samsung.android.view.SemWindowManager"

    const-string v3, "isTableMode"

    invoke-static {v2, v3, v1}, Lh3/a;->s(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v3, v0, [Ljava/lang/Class;

    const-string v4, "getInstance"

    invoke-static {v2, v4, v3}, Lh3/a;->s(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v4, v3

    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static z(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/annotation/i0;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/annotation/i0;->a:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/annotation/i0;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object v0, Lcom/fasterxml/jackson/annotation/i0;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "cn.google"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/fasterxml/jackson/annotation/i0;->b:Ljava/lang/Boolean;

    :cond_1
    sget-object p0, Lcom/fasterxml/jackson/annotation/i0;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract e(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.end method
