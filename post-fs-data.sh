#!/system/bin/sh

if ! touch /cache/test; then
    mount -o bind /data/unencrypted /cache
fi

rm -f /cache/audio_effects.xml
touch /cache/audio_effects.xml
chcon u:object_r:vendor_configs_file:s0 /cache/audio_effects.xml
chown root:root /cache/audio_effects.xml
chmod 0644 /cache/audio_effects.xml
mount -o bind /cache/audio_effects.xml /odm/etc/audio_effects.xml
