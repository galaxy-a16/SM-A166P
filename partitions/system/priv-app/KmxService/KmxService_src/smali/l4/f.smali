.class public final Ll4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    iput p1, p0, Ll4/f;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll4/c;)Ll4/c;
    .locals 1

    instance-of v0, p1, Ll4/i;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ll4/b;

    iget p0, p0, Ll4/f;->a:F

    invoke-direct {v0, p0, p1}, Ll4/b;-><init>(FLl4/c;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
