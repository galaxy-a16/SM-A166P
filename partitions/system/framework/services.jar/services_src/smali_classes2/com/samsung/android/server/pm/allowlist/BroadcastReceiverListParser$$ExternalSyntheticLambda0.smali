.class public final synthetic Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/Set;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;->$r8$lambda$TYmgbGGCs4ZXv1yK26OtQyYaupQ(Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
