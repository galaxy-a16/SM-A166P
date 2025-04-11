.class public final Lcom/google/firebase/ktx/FirebaseCommonLegacyRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


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
.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "La5/c;",
            ">;"
        }
    .end annotation

    const-string p0, "fire-core-ktx"

    const-string v0, "20.4.2"

    invoke-static {p0, v0}, Lp9/d;->u(Ljava/lang/String;Ljava/lang/String;)La5/c;

    move-result-object p0

    invoke-static {p0}, Ll9/b;->o0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
