.class public final synthetic Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/PolicyHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/PolicyHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/chimera/PolicyHandler;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/chimera/PolicyHandler;

    check-cast p1, Lcom/android/server/chimera/ChimeraAppInfo;

    check-cast p2, Lcom/android/server/chimera/ChimeraAppInfo;

    invoke-static {p0, p1, p2}, Lcom/android/server/chimera/PolicyHandler;->$r8$lambda$TcatbjcLJWR8R0bZwGDUVk0yFOs(Lcom/android/server/chimera/PolicyHandler;Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraAppInfo;)I

    move-result p0

    return p0
.end method
