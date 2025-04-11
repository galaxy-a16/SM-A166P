.class public Lcom/android/server/om/OverlayReferenceMapper$1;
.super Ljava/lang/Object;
.source "OverlayReferenceMapper.java"

# interfaces
.implements Lcom/android/server/om/OverlayReferenceMapper$Provider;


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/OverlayReferenceMapper;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayReferenceMapper;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/server/om/OverlayReferenceMapper$1;->this$0:Lcom/android/server/om/OverlayReferenceMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActorPkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 116
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getNamedActors()Ljava/util/Map;

    move-result-object p0

    .line 120
    invoke-static {p1, p0}, Lcom/android/server/om/OverlayActorEnforcer;->getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object p0

    .line 121
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTargetToOverlayables(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/Map;
    .locals 2

    .line 127
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object p0

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 132
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object p1

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 134
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 135
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
