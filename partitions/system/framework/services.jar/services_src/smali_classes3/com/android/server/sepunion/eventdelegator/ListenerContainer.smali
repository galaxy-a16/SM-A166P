.class public Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
.super Ljava/lang/Object;
.source "ListenerContainer.java"


# instance fields
.field public final mCustomEventMap:Ljava/util/HashMap;

.field public final mIntentActionMap:Ljava/util/HashMap;

.field public final mUriEventMap:Ljava/util/HashMap;

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    iput p1, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUserId:I

    return-void
.end method
