.class public abstract Lcom/android/server/media/MediaSessionPolicyProvider;
.super Ljava/lang/Object;
.source "MediaSessionPolicyProvider.java"


# static fields
.field static final SESSION_POLICY_IGNORE_BUTTON_RECEIVER:I = 0x1

.field static final SESSION_POLICY_IGNORE_BUTTON_SESSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSessionPoliciesForApplication(ILjava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
