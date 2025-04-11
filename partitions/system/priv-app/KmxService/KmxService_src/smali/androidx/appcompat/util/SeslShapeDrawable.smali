.class public Landroidx/appcompat/util/SeslShapeDrawable;
.super Landroid/graphics/drawable/GradientDrawable;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Class;

    sget-object p3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const-class p3, Landroid/graphics/drawable/GradientDrawable;

    const-string v0, "setSmoothCorner"

    invoke-static {p3, v0, p2}, Lh3/a;->p(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p0, "SeslShapeDrawable"

    const-string p1, "This API is not supported by the platform."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-array p1, p1, [Ljava/lang/Object;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p3, p1, p4

    invoke-static {p0, p2, p1}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
