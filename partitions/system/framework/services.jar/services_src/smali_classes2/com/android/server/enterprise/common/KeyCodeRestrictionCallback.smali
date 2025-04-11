.class public interface abstract Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;
.super Ljava/lang/Object;
.source "KeyCodeRestrictionCallback.java"

# interfaces
.implements Lcom/android/server/enterprise/common/KeyCodeCallback;


# virtual methods
.method public abstract getRestrictedKeyCodes()Ljava/util/Set;
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public abstract isKeyCodeInputAllowed(I)Z
.end method
