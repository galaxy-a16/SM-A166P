.class public final synthetic Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/credentials/GetRequestSession;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/credentials/GetRequestSession;Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/GetRequestSession;

    iput-object p2, p0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/GetRequestSession;

    iget-object p0, p0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/server/credentials/GetRequestSession;->$r8$lambda$XOmUkRzx3Ku1khadDaiFgass-HM(Lcom/android/server/credentials/GetRequestSession;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method
