.class public final synthetic Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/Vpn;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/connectivity/Vpn;

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    invoke-static {v0, v1, p0}, Lcom/android/server/connectivity/Vpn;->$r8$lambda$Zsa1IjqmVil4EX-l1ZHmBU7NEf8(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
