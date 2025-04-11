.class public final synthetic Lcom/android/server/notification/PreferencesHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/android/server/notification/PreferencesHelper;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p4, Ljava/util/ArrayList;

    check-cast p5, Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, p0, p4, p5}, Lcom/android/server/notification/PreferencesHelper;->isEdgeLightingAllowedWithLock(Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method
