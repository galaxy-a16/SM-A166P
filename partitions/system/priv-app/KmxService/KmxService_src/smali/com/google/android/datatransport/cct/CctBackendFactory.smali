.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lp2/c;)Lp2/h;
    .locals 2

    new-instance p0, Lm2/d;

    move-object v0, p1

    check-cast v0, Lp2/b;

    iget-object v0, v0, Lp2/b;->a:Landroid/content/Context;

    check-cast p1, Lp2/b;

    iget-object v1, p1, Lp2/b;->b:Lv2/a;

    iget-object p1, p1, Lp2/b;->c:Lv2/a;

    invoke-direct {p0, v0, v1, p1}, Lm2/d;-><init>(Landroid/content/Context;Lv2/a;Lv2/a;)V

    return-object p0
.end method
