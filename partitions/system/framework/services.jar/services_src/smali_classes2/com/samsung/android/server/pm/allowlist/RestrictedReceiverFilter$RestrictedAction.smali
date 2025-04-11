.class public Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;
.super Ljava/lang/Object;
.source "RestrictedReceiverFilter.java"


# instance fields
.field public mAction:Ljava/lang/String;

.field public mCodePath:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;->mAction:Ljava/lang/String;

    .line 233
    iput-object p2, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;->mPackageName:Ljava/lang/String;

    .line 234
    iput-object p3, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;->mCodePath:Ljava/lang/String;

    return-void
.end method
