.class public final Landroidx/core/os/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroidx/core/os/j;


# instance fields
.field public final a:Landroidx/core/os/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    invoke-static {v0}, Landroidx/core/os/i;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object v0

    new-instance v1, Landroidx/core/os/j;

    new-instance v2, Landroidx/core/os/l;

    invoke-direct {v2, v0}, Landroidx/core/os/l;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Landroidx/core/os/j;-><init>(Landroidx/core/os/l;)V

    sput-object v1, Landroidx/core/os/j;->b:Landroidx/core/os/j;

    return-void
.end method

.method public constructor <init>(Landroidx/core/os/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/os/j;->a:Landroidx/core/os/k;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/core/os/j;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/core/os/j;

    iget-object p1, p1, Landroidx/core/os/j;->a:Landroidx/core/os/k;

    iget-object p0, p0, Landroidx/core/os/j;->a:Landroidx/core/os/k;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/core/os/j;->a:Landroidx/core/os/k;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/core/os/j;->a:Landroidx/core/os/k;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
